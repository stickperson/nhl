var salary = (function () {
  var CONFIG = {
    minCircleRadius: 20,
    maxCircleRadius: 50,
    selectedStrokeWidth: 2.5,
    unselectedStrokeWidth: 2,
    selectedOpacity: 0.6,
    unselectedOpacity: 0.2,
  };

  var positions = ['c', 'lw', 'rw', 'd', 'g'];

  convertCap =  function(cap) {
    return (cap/1000000).toFixed(3).toString() + 'M';
  };

  var positionSelected = function(p) {
    var svg = d3.select('svg');
    var circles = d3.selectAll('circle');
    circles.style('opacity', function(d) {
      return d.position == p.position ? CONFIG.selectedOpacity : CONFIG.unselectedOpacity;
    })
    .style('stroke-width', function(d) {
      return d.position == p.position ? CONFIG.selectedStrokeWidth : CONFIG.unselectedStrokeWidth;
    });
    showPopup(p, this);
  };

  var positionUnselected = function(p) {
    var circles = d3.selectAll('circle');
    circles.style('opacity', function(d) {
      return CONFIG.selectedOpacity;
    })
    .style('stroke-width', function(d) {
      return CONFIG.unselectedStrokeWidth;
    });
    removePopup();
  };

  var showPopup = function(position, el) {
    var svgPosition = $('#ice').position();
    var offsetTop = svgPosition.top;
    var offsetLeft = svgPosition.left;
    var circle = d3.select(el);
    var top = parseInt(circle.attr('cy'), 10);
    var left = parseInt(circle.attr('cx'), 10);
    var r = parseInt(circle.attr('r'), 10);
    var popupTemplate = _.template(d3.select('#popupTemplate').html());
    var orderedPlayers = _.sortBy(position.players, function(p) { return - p.cap_hit; });
    var pop = d3.select('#selected-position');
    _.each(position.players, function(player) {
      player['small_cap'] = convertCap(player.cap_hit);
    });
    pop
      .html(popupTemplate({
        data: {
          // team: teams[0],
          players: position.players,
          position: position.position,
          cap: position.cap_small,
          orderedPlayers: orderedPlayers,
          location: position.location,
          team: position.team_name,
          logo: position.logo_name
        }
      }))
      .style('display', 'block')
      .style('top', top + offsetTop + 'px')
      .style('left', left + offsetLeft + 'px');
  };

  var removePopup = function() {
    popup = $('#selected-position');
    popup.html('');
    popup.css('display', 'none');
  };

  return {

    setupLabels: function() {
      var forwards_g = d3.select('#forwards');
      forwards_g.selectAll('text')
        .data(['Forwards'])
        .enter()
        .append('text')
        .attr('x', function(d) {
          return 0;
        })
        .attr('y', function(d) {
          return $('#c').attr('cy');
        })
        .style('color', 'red')
        .style('font-family', 'Helvetica Neue, sans-serif')
        .style('font-weight', '100')
        .style('letter-spacing', '10px')
        .style('font-size', '17px')
        .text('FORWARDS');

      var defense_g = d3.select('#defense');
      defense_g.selectAll('text')
        .data(['Defensemen'])
        .enter()
        .append('text')
        .attr('x', function(d) {
          return 0;
        })
        .attr('y', function(d) {
          return $('#d').attr('cy');
        })
        .style('color', 'red')
        .style('font-family', 'Helvetica Neue, sans-serif')
        .style('font-weight', '100')
        .style('letter-spacing', '10px')
        .style('font-size', '17px')
        .text('DEFENSE');

      var goalies_g = d3.select('#goalie');
      goalies_g.selectAll('text')
        .data(['Goalies'])
        .enter()
        .append('text')
        .attr('x', function(d) {
          return 0;
        })
        .attr('y', function(d) {
          return $('#g').attr('cy');
        })
        .style('color', 'red')
        .style('font-family', 'Helvetica Neue, sans-serif')
        .style('font-weight', '100')
        .style('letter-spacing', '10px')
        .style('font-size', '17px')
        .text('GOALIES');
    },
    drawCircles: function() {
      var data = this.data,
        stats = this.stats;

      $('#current-logo').html();
      $('#current-team').html();
      currentTemplate = _.template($('#currentTemplate').html());
      currentTeam = $('#current-team');
      currentTeam
        .html(currentTemplate({
          data: {
            name: data.name,
            full_name: data.full_name,
            location: data.location,
            c_cap: convertCap(data.center_cap),
            rw_cap: convertCap(data.rw_cap),
            lw_cap: convertCap(data.lw_cap),
            d_cap: convertCap(data.d_cap),
            g_cap: convertCap(data.g_cap),
            stats: stats
          }
        }));

      var seed = {};
      var centers = {
        'position': 'Centers',
        'players': data['centers'],
        'cap': data['center_cap'],
        'location': data['location'],
        'team_name': data['full_name'],
        'logo_name': data['name'],
        'cap_small': convertCap(data['center_cap'])
      };
      var defense = {
        'position': 'Defensemen',
        'players': data['defense'],
        'cap': data['d_cap'],
        'location': data['location'],
        'team_name': data['full_name'],
        'logo_name': data['name'],
        'cap_small': convertCap(data['d_cap'])
      };
      var lws = {
        'position': 'Left Wings',
        'players': data['lws'],
        'cap': data['lw_cap'],
        'location': data['location'],
        'team_name': data['full_name'],
        'logo_name': data['name'],
        'cap_small': convertCap(data['lw_cap'])
      };
      var rws = {
        'position': 'Right Wings',
        'players': data['rws'],
        'cap': data['rw_cap'],
        'location': data['location'],
        'team_name': data['full_name'],
        'logo_name': data['name'],
        'cap_small': convertCap(data['rw_cap'])
      };
      var goalies = {
        'position': 'Goalies',
        'players': data['goalies'],
        'cap': data['g_cap'],
        'location': data['location'],
        'team_name': data['full_name'],
        'logo_name': data['name'],
        'cap_small': convertCap(data['g_cap'])
      };
      seed['c'] = centers;
      seed['d'] = defense;
      seed['lw'] = lws;
      seed['rw'] = rws;
      seed['g'] = goalies;
      var min_cap = _.min([data['center_cap'], data['d_cap'], data['lw_cap'], data['rw_cap'], data['g_cap']]);
      var max_cap = _.max([data['center_cap'], data['d_cap'], data['lw_cap'], data['rw_cap'], data['g_cap']]);
      var scale = d3.scale.linear()
          .domain([min_cap, max_cap])
          .range([20, 100]);

      positions.forEach(function(p) {
        var circle = d3.selectAll('#' + p)
          .datum(seed[p])
          .on({
            mouseover: positionSelected,
            mouseout: positionUnselected
          })
          .transition()
          .duration(750)
            .attr('r', function(d) {
              return scale(d.cap);
            })
            .attr('fill', '#' + data.primary_color)
            .attr('stroke', '#' + data.secondary_color)
            .style('opacity', CONFIG.selectedOpacity)
            .style('stroke-width', CONFIG.unselectedStrokeWidth);
      });
    },
    updateBox: function() {
      var divs = d3.selectAll('#links div');
      var data = this.data;
      divs
        .datum(this.data)
        .style('border', function(d) {
          id = $(this).attr('id');
          return id == data.name ? '1px solid #ccc' : 'none';
        });
    }
  };
}());

$(function() {
  var s = salary;
  $.get('api/v1/teams', function(data) {
    orderedTeams = _.sortBy(data.objects, function(d) {
      return d.location;
    });
    var linksTemplate = _.template(d3.select('#linksTemplate').html());
    links = d3.select('#links');
    links
      .html(linksTemplate({
        data: {
          teams: orderedTeams
        }
      }));
    var stats = {};
    var c_avg = (d3.mean(_.pluck(data.objects, 'center_cap'))/1000000).toFixed(3);
    var lw_avg = (d3.mean(_.pluck(data.objects, 'lw_cap'))/1000000).toFixed(3);
    var rw_avg = (d3.mean(_.pluck(data.objects, 'rw_cap'))/1000000).toFixed(3);
    var d_avg = (d3.mean(_.pluck(data.objects, 'd_cap'))/1000000).toFixed(3);
    var g_avg = (d3.mean(_.pluck(data.objects, 'g_cap'))/1000000).toFixed(3);
    stats['c'] = c_avg;
    stats['lw'] = lw_avg;
    stats['rw'] = rw_avg;
    stats['d'] = d_avg;
    stats['g'] = g_avg;
    s.stats = stats;
    var random = _.random(0, 29);
    var random_team = data.objects[random];
    $.get('api/v1/ateam?name=' + random_team.name, function(d) {
      s.data = d['objects'][0];
      s.setupLabels();
      s.drawCircles();
      s.updateBox();
    });

    $('#links div').on('click', function() {
      var id = $(this).attr('id');
      $.get('api/v1/ateam?name=' + id, function(data) {
        s.data = data['objects'][0];
        s.drawCircles();
        s.updateBox();
      });
    });
  });
});
