#!/usr/bin/python3
# -*- coding: utf-8 -*-

import logging
import time
from faker import Faker
fake = Faker('zh_CN')

logging.basicConfig(level = logging.INFO,format = '%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("log-test-v1.0.0")

while True:
    # logger.info('Informational message count %d', count)
    logger.info(u'测试数据: ======= %s %s %s', fake.name(), fake.address(), fake.email())
    logger.warning(u'测试数据: ======= %s', fake.company())
    logger.error(u'测试数据: ======= %s %s', fake.job(), fake.phone_number())
    time.sleep(2)