# frozen_string_literal: true

class ResortsController < ApplicationController
  def index
    @resort_list_props = {
      regions: [
        {
          name: "Japan",
          resorts: [
            { name: "Cortina", lat: "36.7763214", lng: "137.8879242", review_count: 28, review_score_avg: 4.25 },
            { name: "Goryu", lat: "36.6630745", lng: "137.8365631", review_count: 0, review_score_avg: nil },
            { name: "Hakuba 47 Goryu", lat: "36.6849823", lng: "137.8283386", review_count: 54, review_score_avg: 4.48 },
            { name: "Happo One", lat: "36.7025375", lng: "137.8368225", review_count: 51, review_score_avg: 4.47 },
            { name: "Iwatake", lat: "36.7167244", lng: "137.8541412", review_count: 10, review_score_avg: 4.66 },
            { name: "Tsugaike", lat: "36.74897", lng: "137.8661499", review_count: 12, review_score_avg: 4.35 },
            { name: "Kiroro", lat: "43.0676059", lng: "140.9961031", review_count: 8, review_score_avg: 4.11 },
            { name: "Moiwa", lat: "42.8482513", lng: "140.6298523", review_count: 7, review_score_avg: 4.08 },
            { name: "Niseko", lat: "42.8469734", lng: "140.6843109", review_count: 57, review_score_avg: 4.46 },
            { name: "Nozawa Onsen", lat: "36.9229012", lng: "138.4406433", review_count: 16, review_score_avg: 4.42 },
            { name: "Rusutsu", lat: "42.7367733", lng: "140.9083848", review_count: 12, review_score_avg: 4.31 },
            { name: "Sapporo Kokusai", lat: "43.0728205", lng: "141.0820119", review_count: 2, review_score_avg: 4.64 },
            { name: "Sapporo Teine", lat: "43.0979472", lng: "141.2064611", review_count: 0, review_score_avg: nil },
            { name: "Furano", lat: "43.3232138", lng: "142.3556126", review_count: 15, review_score_avg: 4.29 },
            { name: "Tomamu", lat: "43.0631876", lng: "142.6313507", review_count: 4, review_score_avg: 4.54 },
            { name: "Appi Kogen", lat: "40.0055068", lng: "140.9485748", review_count: 5, review_score_avg: 4.15 },
            { name: "Shiga Kogen", lat: "36.7447066", lng: "138.5165985", review_count: 6, review_score_avg: 4.41 },
            { name: "Kagura", lat: "36.8925734", lng: "138.7765931", review_count: 4, review_score_avg: 4.02 },
            { name: "Gala Yuzawa", lat: "36.9505418", lng: "138.7951861", review_count: 7, review_score_avg: 3.89 },
            { name: "Naeba", lat: "36.78956", lng: "138.782038", review_count: 2, review_score_avg: 4.43 },
            { name: "Asahidake Ropeway", lat: "43.6543229", lng: "142.7951407", review_count: 6, review_score_avg: 3.3 },
            { name: "Sahoro", lat: "43.1747971", lng: "142.8057843", review_count: 0, review_score_avg: nil },
            { name: "Myoko Suginohara", lat: "36.860303", lng: "138.1567933", review_count: 9, review_score_avg: 4.21 },
            { name: "Seki Onsen", lat: "36.9049156", lng: "138.1600147", review_count: 0, review_score_avg: nil },
            { name: "Ikenotaira Onsen", lat: "36.8727565", lng: "138.1614323", review_count: 0, review_score_avg: nil },
            { name: "Akakura Kanko", lat: "36.8864982", lng: "138.1767901", review_count: 2, review_score_avg: 4.85 },
            { name: "Akakura Onsen", lat: "36.8910239", lng: "138.1759164", review_count: 8, review_score_avg: 4.49 },
            { name: "Hakkoda", lat: "40.6746035", lng: "140.8177179", review_count: 7, review_score_avg: 4.09 },
            { name: "Yamagata Zao Onsen", lat: "38.1651855", lng: "140.3953605", review_count: 2, review_score_avg: 4.0 },
            { name: "Madarao Kogen", lat: "36.8525293", lng: "138.2873803", review_count: 0, review_score_avg: nil }
          ]
        },
        {
          name: "Utah",
          resorts: [
            { name: "Brian Head Resort", lat: "37.7021484", lng: "-112.8498993", review_count: 4, review_score_avg: 4.54 },
            { name: "Brighton Resort", lat: "40.5925293", lng: "-111.5776291", review_count: 24, review_score_avg: 3.93 },
            { name: "Powder Mountain", lat: "41.3823357", lng: "-111.7638702", review_count: 10, review_score_avg: 4.29 },
            { name: "Alta", lat: "40.5908089", lng: "-111.6287613", review_count: 73, review_score_avg: 4.49 },
            { name: "Deer Valley Resort", lat: "40.637352", lng: "-111.4782791", review_count: 31, review_score_avg: 4.68 },
            { name: "Park City", lat: "40.6514664", lng: "-111.5078049", review_count: 88, review_score_avg: 4.59 },
            { name: "Snowbird", lat: "40.5804787", lng: "-111.6548996", review_count: 49, review_score_avg: 4.33 },
            { name: "Snowbasin", lat: "41.2160454", lng: "-111.8568954", review_count: 21, review_score_avg: 4.41 },
            { name: "Solitude Mountain Resort", lat: "40.6198502", lng: "-111.5918884", review_count: 11, review_score_avg: 4.42 },
            { name: "Sundance", lat: "40.3934212", lng: "-111.588768", review_count: 8, review_score_avg: 4.17 }
          ]
        },
        {
          name: "Colorado",
          resorts: [
            { name: "Arapahoe Basin", lat: "39.6423111", lng: "-105.8716812", review_count: 94, review_score_avg: 4.2 },
            { name: "Aspen Highlands", lat: "39.1822548", lng: "-106.8554916", review_count: 18, review_score_avg: 4.46 },
            { name: "Aspen Mountain", lat: "39.1897278", lng: "-106.9463882", review_count: 46, review_score_avg: 3.81 },
            { name: "Buttermilk", lat: "39.2057953", lng: "-106.8604965", review_count: 6, review_score_avg: 3.71 },
            { name: "Snowmass", lat: "39.1897278", lng: "-106.9463882", review_count: 46, review_score_avg: 4.17 },
            { name: "Beaver Creek", lat: "39.6042252", lng: "-106.5165176", review_count: 75, review_score_avg: 4.56 },
            { name: "Breckenridge", lat: "39.4816551", lng: "-106.038353", review_count: 186, review_score_avg: 4.46 },
            { name: "Copper Mountain", lat: "39.5014191", lng: "-106.1516266", review_count: 82, review_score_avg: 4.39 },
            { name: "Crested Butte", lat: "38.8697128", lng: "-106.9878235", review_count: 39, review_score_avg: 4.47 },
            { name: "Keystone", lat: "39.5791664", lng: "-105.9347382", review_count: 130, review_score_avg: 4.37 },
            { name: "Loveland", lat: "40.3977623", lng: "-105.0749817", review_count: 36, review_score_avg: 4.46 },
            { name: "Monarch Mountain", lat: "38.5114365", lng: "-106.333046", review_count: 13, review_score_avg: 4.61 },
            { name: "Powderhorn", lat: "39.069397", lng: "-108.1507339", review_count: 7, review_score_avg: 4.06 },
            { name: "Purgatory", lat: "37.6302681", lng: "-107.8140488", review_count: 17, review_score_avg: 4.5 },
            { name: "Steamboat", lat: "40.4849777", lng: "-106.8317184", review_count: 68, review_score_avg: 4.53 },
            { name: "Telluride", lat: "37.9374924", lng: "-107.8122864", review_count: 36, review_score_avg: 4.35 },
            { name: "Vail", lat: "39.6402626", lng: "-106.3741989", review_count: 163, review_score_avg: 4.49 },
            { name: "Winter Park Resort", lat: "39.8868484", lng: "-105.7625504", review_count: 80, review_score_avg: 4.42 },
            { name: "Wolf Creek", lat: "37.4747581", lng: "-106.7935867", review_count: 4, review_score_avg: 4.23 },
            { name: "Eldora", lat: "39.93722", lng: "-105.582679", review_count: 0, review_score_avg: nil },
            { name: "Echo Mountain", lat: "39.684582", lng: "-105.519393", review_count: 0, review_score_avg: nil }
          ]
        }
      ]
    }
  end
end
