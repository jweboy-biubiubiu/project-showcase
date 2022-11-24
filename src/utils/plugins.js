const db = uniCloud.database();

export default {
  install(app) {
    app.config.globalProperties['$db'] = db;
  },
};
