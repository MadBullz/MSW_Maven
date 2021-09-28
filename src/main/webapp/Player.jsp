<%-- 
    Document   : Player
    Created on : 21-Sep-2021, 21:03:34
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/player.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/header.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Player</title>
    </head>
    <body>

        <div class="player">
            <div class="player_body">
                <div class="side_bar_home">
                    <img style="width: 70px;" src="img/logo.png" alt="">
                    <div class="sidebar_option">
                        <i class="fas fa-home"></i>
                        <p>
                            <a href="home">Home</a>
                        </p>

                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-search"></i>
                        <p>Search</p>

                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-swatchbook"></i>
                        <p>
                            Your Library
                        </p>

                    </div>
                    <br />
                    <strong class="sidebar_tittle"> PLAYLIST </strong>
                    <hr />
                    <div class="sidebar_option">
                        <i class="fas fa-plus-square"></i>
                        <p>
                            Add new playlist
                        </p>

                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-record-vinyl"></i>
                        <p>
                            Hip hop
                        </p>

                    </div>
                </div>
                <div class="colection_body">
                    <div class="collection_header">
                        <div class="header_left">
                            <i class="fas fa-chevron-circle-left fa-3x" style="color:black"></i>
                        </div>
                        <div class="header_right">
                            <i class="fas fa-user-circle fa-3x"></i>
                            <h4>User's name</h4>
                        </div>
                    </div>
                    <div class="body_info">
                        <img
                            src="https://cf.shopee.vn/file/8f1149f4f1f6bdf77bee6b55317d98f6" />
                        <div class="body_info_text">
                            <strong>PLAYLIST</strong>
                            <h2>DISCOVERY WEEKLY</h2>
                            <p>Description...</p>
                        </div>
                    </div>
                    <div class="body_songs">
                        <div class="body_song_icon play_button">
                            <i class="fas fa-play-circle fa-5x" id="playlist_body_suffle" style="color: green;"></i>
                            <i class="fas fa-pause-circle fa-5x my pause" id="playlist_body_suffle"></i>
                            <i class="far fa-heart fa-2x" style="color: green;"></i>
                            <i class="fas fa-ellipsis-h fa-2x"></i>
                        </div>

                        <div class="playlist_song">
                        </div>

                    </div>
                </div>
            </div>
            <div class="player_footer">
                <div class="footer_left">
                    <img class="song_playing"
                         src="" />
                    <div class="song_info">
                        <h4 id="my_tittle"></h4>
                        <p id="my_artis"></p>
                    </div>
                </div>

                <div class="footer_center">
                    <div class="control_bar">
                        <i class="fa fa-random fa-2x" id="control_green"></i>
                        <i class="fas fa-step-backward fa-2x" id="control_icon"></i>
                        <div class="play_button">
                            <i class="far fa-play-circle fa-5x " id="control_icon"></i>
                            <i class="fas fa-pause-circle fa-5x my pause"></i>
                        </div>


                        <i class="fas fa-step-forward fa-2x" id="control_icon"></i>
                        <i class="fas fa-retweet fa-2x" id="control_green"></i>
                    </div>
                    <div class="progress-container">
                        <span id="start_time"></span>
                        <div class="progress-bar">
                            <div class="progress" id="progress"></div>
                            <audio id="audio" src=""></audio>
                        </div>
                        <span id="end_time"></span>
                    </div>
                </div>
                <div class="footer_right">
                    <i class="fas fa-list-ul fa-2x"></i>
                    <div class="volume_control">
                        <i id="volume" class="fas fa-volume-up fa-2x"></i>
                        <i id="volume_mute" class="fas fa-volume-mute fa-2x changesound"></i>
                    </div>

                    <div class="input-div">
                        <div class="volumn-input-div">
                            <input type="range" value="100" step="5" min="0" >

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
    const playlist = $('.playlist_song');
    const player_tittle = $('#my_tittle');
    const player_thumb = $('.song_playing');
    const player_artis = $('#my_artis');
    const audio = $('#audio');
    const playBtn = $('.play_button');
    const progress = $("#progress");
    const next_Btn = $('.fa-step-forward');
    const prev_Btn = $('.fa-step-backward');
    const random_Btn = $('.fa-random');
    const repeat_Btn = $('.fa-retweet');
    const love_Btn = $(".fa-heart");
    const volume = $(".volume_control");
    const app = {
        isMute: false,
        currentIndex: 0,
        isRandom: false,
        isRepeat: false,
        songs: [
             {
                name: 'Real love',
                singer: 'My Anh, Khac Hung',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Reallove.mp3',
                image: 'https://static.yeah1.com/uploads/editors/26/2021/07/30/gGOSwwQVwszafKF3HJAHQ5klSWXu3ji7KSJhqttP.jpg'
            },
            {
                name: 'Co em doi bong vui',
                singer: 'Chillies',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Chillies.mp3',
                image: 'https://images.genius.com/5822e08274e4684b00a177ff3ef2f33e.551x551x1.jpg'
            },
            {
                name: 'Huong',
                singer: 'Van Mai Huong',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Huong.mp3',
                image: 'https://avatar-ex-swe.nixcdn.com/song/share/2021/01/22/7/e/7/0/1611280899564.jpg'
            },
            {
                name: 'GENE',
                singer: 'Binz',
                path: 'http://localhost:8080/MusicStreamingWeb/music/GENE.mp3',
                image: 'https://tudienwiki.com/wp-content/uploads/2020/09/Binz.png'
            },
            {
                name: 'Krazy',
                singer: 'Binz',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Krazy.mp3',
                image: 'https://avatar-nct.nixcdn.com/mv/2018/02/02/a/5/2/9/1517539425061_640.jpg'
            },
            {
                name: 'Phai Chang Em Da Yeu',
                singer: 'Juky San',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Phaichangemdayeu.mp3',
                image: 'https://i1.sndcdn.com/artworks-zEUVw9b46Eu9qGYe-eATUzg-t500x500.jpg'
            },
            {
                name: 'Thang nam',
                singer: 'Soobin Hoang Son',
                path: 'http://localhost:8080/MusicStreamingWeb/music/Thangnam.mp3',
                image: 'https://cdnmedia.thethaovanhoa.vn/Upload/3uPkfvAxvuOpUQrmKeiDaA/files/2021/08/B/22/playah_Fotor.jpg'
            },
            {
                name: 'They Said',
                singer: 'Binz',
                path: 'http://localhost:8080/MusicStreamingWeb/music/TheySaid.mp3',
                image: 'https://i.ytimg.com/vi/XdBsAXOxYfo/hqdefault.jpg'
            }
        ],
        
        render: function () {
            const htmls = this.songs.map((song, index) => {
                console.log(song.image)
                return `
       <div class="song_row \${index===this.currentIndex? 'song_active':''}" data-index="\${index}">
            <img class="songRow_album" src="\${song.image}" />
                <div class="songRow_info" style="width: 80%;">
                   <h1>\${song.name}</h1>
                      <p>\${song.singer}</p>
                </div>
                <div class="loader \${index== this.currentIndex? 'playing':''}" >
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                    <span class="stroke"></span>
                </div>
                <i class="far fa-heart"></i>
                <span style="padding:0 10px">04:23</span>
                <i class="fas fa-ellipsis-h"></i>
        </div>
    `
            })
            playlist.html(htmls.join(''))
        },
        defineProperties: function () {
            Object.defineProperty(this, 'currrentSong', {
                get: function () {
                    return this.songs[this.currentIndex]
                }
            })
        },
        handleEvent: function () {
            //Handle play/pause button

            playBtn.click(function () {
                if ($('.fa-play-circle').hasClass("my pause")) {
                    $('.fa-play-circle').removeClass("my pause")
                    $('.fa-pause-circle').addClass("pause")
                    audio.get(0).pause()
                } else {
                    $('.fa-play-circle').addClass("my pause")
                    $('.fa-pause-circle').removeClass("pause")
                    audio.get(0).play()
                    audio.get(0).ontimeupdate = function () {
                        var s = parseInt(audio.get(0).currentTime % 60);
                        var m = parseInt((audio.get(0).currentTime / 60) % 60);
                        $('#start_time').html(m + ':' + s)
                        //progress of song
                        if (audio.get(0).duration) {
                            const song_progress = Math.floor(audio.get(0).currentTime / audio.get(0).duration * 100)
                            progress.css("width", song_progress + '%')
                        }
                    }

                    var e = parseInt(audio.get(0).duration % 60);
                    var d = parseInt((audio.get(0).duration / 60) % 60);
                    $('#end_time').html(e + ':' + d * 10)
                }

            })
            //function call next song
            var callback = () => {
                //app.nextSong=app.nextSong.bind(this)
                app.nextSong()
                audio.get(0).play()
                app.render()
            }
            //function for prev song
            var onprev = () => {
                app.prevSong()
                audio.get(0).play()
                app.render()
            }
            onprev = onprev.bind(this)
            callback = callback.bind(this)
            //Next Song
            prev_Btn.click(onprev)
            next_Btn.click(callback)
            random_Btn.click(function (e) {
                app.isRandom = !app.isRandom
                random_Btn.toggleClass('active', app.isRandom)
                app.getRandomSong()
                audio.get(0).play()
                $('.fa-play-circle').addClass("my pause")
                $('.fa-pause-circle').removeClass("pause")
            })
            //volume on click
            volume.click(function () {
                if ($('#volume').hasClass("changesound")) {
                    $('#volume').removeClass("changesound")
                    $('#volume_mute').addClass("changesound")
                    document.querySelector("input").value = 100
                    audio.get(0).volume = slider.value / 100


                } else {
                    $('#volume').addClass("changesound")
                    $('#volume_mute').removeClass("changesound")
                    document.querySelector("input").value = 0
                    audio.get(0).volume = slider.value / 100
                }
            })
            //Handle continue playing when audio ended
            audio.get(0).onended = function () {
                if (app.isRandom) {
                    random_Btn.click()
                } else if (app.isRepeat) {
                    audio.get(0).play()
                } else {
                    next_Btn.click()
                }
                $('.fa-play-circle').addClass("my pause")
                $('.fa-pause-circle').removeClass("pause")
            }

            //Handle repeat song
            repeat_Btn.click(function (e) {
                app.isRepeat = !app.isRepeat
                repeat_Btn.toggleClass('active', app.isRepeat)
                app.isRandom = false
                random_Btn.removeClass("active")
            })

            //Handle

            //6. Play song choosed in list when click on this song
            //console.log() 
            playlist.click(function (e) {
                const song_element = e.target.closest('.song_row:not(.song_active)')
                //handle when click on song
                if (song_element || e.target.closest('.fa-ellipsis-h')) {
                    if (song_element) {
                        app.currentIndex = Number(song_element.dataset.index)
                        //console.log(app.currentIndex)
                        app.loadCurrentSong()
                        audio.get(0).play()
                        app.render()
                        $('.fa-play-circle').addClass("my pause")
                        $('.fa-pause-circle').removeClass("pause")

                    }
                }
            })

            //volume handle
            const slider = document.querySelector("input")
            slider.oninput = function () {
                audio.get(0).volume = slider.value / 100
                //console.log(slider.value)
                if (parseInt(slider.value) === 0) {
                    app.isMute = true
                    $('#volume').addClass('changesound')
                    $('#volume_mute').removeClass('changesound')
                } else {
                    app.isMute = false
                    $('#volume').removeClass('changesound')
                    $('#volume_mute').addClass('changesound')
                }
                console.log(app.isMute)
            }

        },

        //load Song

        loadCurrentSong: function () {
            audio.attr("src", this.currrentSong.path)
            player_thumb.attr("src", this.currrentSong.image)
            player_artis.html(this.currrentSong.singer)
            player_tittle.html(this.currrentSong.name)
        },
        //next Song
        nextSong: function () {
            this.currentIndex++
            console.log(this, this.currentIndex)
            if (this.currentIndex >= this.songs.length) {
                this.currentIndex = 0
            }
            $('.fa-play-circle').addClass("my pause")
            $('.fa-pause-circle').removeClass("pause")

            this.loadCurrentSong()
        },

        //prevSong
        prevSong: function () {
            this.currentIndex--
            console.log(this, this.currentIndex)
            if (this.currentIndex <= 0) {
                this.currentIndex = 0
            }
            $('.fa-play-circle').addClass("my pause")
            $('.fa-pause-circle').removeClass("pause")

            this.loadCurrentSong()
        },

        //playRandomSong
        getRandomSong: function () {
            let newIndex
            do {
                newIndex = Math.floor(Math.random() * this.songs.length)
            } while (newIndex == this.currentIndex)
            this.currentIndex = newIndex
            this.loadCurrentSong()
            app.render()
        },

        start: function () {
            //define properties for object
            this.defineProperties()
            //load current Song
            this.loadCurrentSong()
            //render playlist
            this.render()
            this.handleEvent()
        }
    }

    app.start()
</script>
</html>


<!-- Function list  
    0.sync 2 play button control  --done
    1.Render and display songs      --done
    2.Play / pause /seek            --done
    3. Next/prev control            --done
    4. Random Songs control         -done
    5.Next/Repeat when song ended       -done
    6. Play song choosed in list when click on this song    --done
    7.Active love_button,sync 2 love_button
    8.Song active: music waves animation            --done
    9.More_button display text info when click, sync 2 more
    10.Volumn song control-->
<!-- Player Process -->