set(BOOST_VERSION       "1.53.0")
set(BOOST_HASH          "SHA256=CED7CE2ED8D7D34815AC9DB1D18D28FCD386FFBB3DE6DA45303E1CF193717038")
set(CURL_VERSION        "7.43.0")
set(CURL_HASH           "SHA256=1A084DA1EDBFC3BD632861358B26AF45BA91AAADFB15D6482DE55748B8DFC693")
set(ELFIO_VERSION       "3.2")
set(ELFIO_HASH          "SHA256=964BE1D401F98FA7A1242BCF048DF32B7D56DBAAAE5D02834900499073AC2E95")
set(GOOGLETEST_VERSION  "1.8.0")
set(GOOGLETEST_HASH     "SHA256=58A6F4277CA2BC8565222B3BBD58A177609E9C488E8A72649359BA51450DB7D8")
set(HTTP_PARSER_VERSION "2.6.2")
set(HTTP_PARSER_HASH    "SHA256=80FFFC3B64EF6968CECDD4B299A96986007DFF4BD12AE6C58CBCB506959B90AD")
set(LEVELDB_VERSION     "1.19")
set(LEVELDB_HASH        "SHA256=7D7A14AE825E66AABEB156C1C3FAE9F9A76D640EF6B40EDE74CC73DA937E5202")
set(LIBAPR_VERSION      "1.5.2")
set(LIBAPR_HASH         "SHA256=C173DE748F85A76B5EA7E5C77F3D9F1EECC9C0A6AB91239973062122EA7DD597")
set(LIBEV_VERSION       "4.22")
set(LIBEV_HASH          "SHA256=736079E8AC543C74D59AF73F9C52737B3BFEC9601F020BF25A87A4F4D0F01BD6")
# TODO(hausdorff): (MESOS-3529) transition this back to a non-beta version.
set(LIBEVENT_VERSION    "2.1.5-beta")
set(LIBEVENT_HASH       "SHA256=9A410E24921F59F0AB2009E5E31B3B20932E4AA5A1CBAC6A53190DC86DADE806")
set(NVML_VERSION        "352.79")
set(NVML_HASH           "SHA256=D0B2CC1742CBD7CC73DA13BFA6BF2DA3D92B545E8388E642D41977F4EAD8D3D0")
set(PICOJSON_VERSION    "1.3.0")
set(PICOJSON_HASH       "SHA256=056805CA2691798F5545935A14BB477F2E1D827C9FB862E6E449DBEA22801C7D")
set(ZLIB_VERSION        "1.2.8")
set(ZLIB_HASH           "SHA256=36658CB768A54C1D4DEC43C3116C27ED893E88B02ECFCB44F2166F9C0B7F2A0D")

# Platform-dependent versions.
if (NOT WIN32)
  set(GLOG_VERSION      "0.3.3")
  set(GLOG_HASH         "SHA256=FBF90C2285BA0561DB7A40F8A4EEFB9AA963E7D399BD450363E959929FE849D0")
  set(PROTOBUF_VERSION  "2.6.1")
  set(PROTOBUF_HASH     "SHA256=DBBD7BDD2381633995404DE65A945FF1A7610B0DA14593051B4738C90C6DD164")
  set(ZOOKEEPER_VERSION "3.4.8")
  set(ZOOKEEPER_HASH    "SHA256=F10A0B51F45C4F64C1FE69EF713ABF9EB9571BC7385A82DA892E83BB6C965E90")
else (NOT WIN32)
  # TODO(hausdorff): (MESOS-3394) Upgrade Windows to use glog v0.3.5 when they
  # release it, as that will contain fixes that will allow us to build glog on
  # Windows, as well as build using CMake directly. For now, we simply point
  # Windows builds at a commit hash in the glog history that has all the
  # functionality we want.
  set(GLOG_VERSION      "da816ea70")
  set(GLOG_HASH         "SHA256=15338EDBE643F3F9A769FBCA34C3AFDF48D8779D800E7F0878A9649A53339F96")

  # TODO(hausdorff): (MESOS-3453) this is a patched version of the protobuf
  # library that compiles on Windows. We need to send this as a PR back to the
  # protobuf project.
  set(PROTOBUF_VERSION  "3.0.0-beta-2")
  set(PROTOBUF_HASH     "SHA256=BE224D07CE87F12E362CFF3DF02851107BF92A4E4604349B1D7A4B1F0C3BFD86")

  # The latest release of ZK, 3.4.7, does not compile on Windows. Therefore, we
  # pick a recent commit that does until the next release stabilizes.
  set(ZOOKEEPER_VERSION "3.5.2-alpha")
  set(ZOOKEEPER_HASH    "SHA256=E4997EE78AAB27628876BCB7BA7FCE8369BA162B1F50D9270A0ED865D11B8310")
endif (NOT WIN32)
