<template>
  <section class="container">
    <div>
      <h1 class="title">
        CNUC
      </h1>
      <div class="link-list">
        <div class="link-item" v-for="item in links" :key="item.title">
          <div class="link-item__logo">
            <img :src="item.logo" alt="">
          </div>
          <div class="link-item__bd">
            <h3 class="link-item__title">{{item.title}}</h3>
            <p class="link-item__desc">{{item.desc}}</p>
            <div class="link-item__link">
              <p class="link-item__url">{{item.url}}</p>
              <a v-if="item.status === 0" class="link-item__button is-stage">{{item.btnText}}</a>
              <a v-if="item.status === 1" target="_blank" class="link-item__button" :href="item.url">{{item.btnText}}</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import AppLogo from '~/components/AppLogo.vue'

export default {
  data() {
    return {
      links: [
        {
          title: '宁波城建论坛',
          desc: '宁波城市建设与经济发展深度讨论平台',
          logo: 'http://p8ebt8doh.bkt.clouddn.com/cnnbuc-cube@2x.png',
          btnText: '立即访问',
          url: 'http://bbs.cnnbuc.com',
          status: 1
        },
        {
          title: '宁波地铁线路图',
          desc: '宁波轨道交通总规划',
          logo: 'http://p8ebt8doh.bkt.clouddn.com/ningbo-subway-logo.png',
          btnText: '立即访问',
          url: 'http://subway.cnnbuc.com',
          status: 1
        },
        {
          title: '摩天时间轴',
          desc: '城市建设进度分享平台',
          logo: 'http://p8ebt8doh.bkt.clouddn.com/cnuc-logo-icon@2x.png',
          btnText: '即将上线',
          url: 'http://build.cnnbuc.com',
          status: 0
        }
      ]
    }
  },
  components: {
    AppLogo
  }
}
</script>

<style lang="stylus">
@require ('../styles/cnuc/var/color.styl');

.link {
  &-list {
    display: flex;
  }

  &-item {
    width: 350px;
    margin: 8px;
    padding: 16px;
    border: 1px solid $color-primary-ss;
    border-radius: 10px;
    display: flex;
    text-align: left;
    transition: 0.5s;

    &:hover {
      border-color: $color-primary-s;
    }

    &__logo {
      width: 64px;
      height: 64px;
      border-radius: 5px;
      overflow: hidden;
      margin-right: 16px;

      >img {
        width: 100%;
        height: 100%;
      }
    }

    &__bd {
      flex: 1;
      height: 150px;
      position: relative;
    }

    &__title {
      font-size: 22px;
      line-height: 1;
      margin-bottom: 8px;
    }

    &__desc {
      font-size: 15px;
      color: #666;
    }

    &__url {
      color: $color-primary;
      text-decoration: underline;
      margin-bottom: 12px;
    }

    &__link {
      position: absolute;
      left: 0px;
      bottom: 0px;
    }

    &__button {
      width: 140px;
      line-height: 40px;
      background: $color-primary;
      color: #FFF;
      display: inline-block;
      text-align: center;
      text-decoration: none;
      border-radius: 5px;
      font-size: 15px;

      &:hover {
        background: $color-primary-s;
      }

      &.is-stage {
        background: #999;
      }
    }
  }
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  padding-top: 100px;
  padding-bottom: 100px;
}

.title {
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: $color-primary;
  letter-spacing: 10px;
  margin-bottom: 100px;
}
</style>
