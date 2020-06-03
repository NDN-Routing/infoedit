#include <boost/property_tree/info_parser.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <iostream>

namespace pt = boost::property_tree;

static void
usage()
{
  std::cerr << "USAGE\n"
    "  infoconv info2json < config.info > config.json\n"
    "  infoconv json2info < config.info > config.info\n"
    "  infoconv info2xml  < config.info > config.xml\n"
    "  infoconv xml2info  < config.xml  > config.info\n";
}

static void
info2json()
{
  pt::ptree tree;
  pt::info_parser::read_info(std::cin, tree);
  pt::json_parser::write_json(std::cout, tree);
}

static void
json2info()
{
  pt::ptree tree;
  pt::json_parser::read_json(std::cin, tree);
  pt::info_parser::write_info(std::cout, tree);
}

static void
info2xml()
{
  pt::ptree tree;
  pt::info_parser::read_info(std::cin, tree);
  pt::xml_parser::write_xml(std::cout, tree);
}

static void
xml2info()
{
  pt::ptree tree;
  pt::xml_parser::read_xml(std::cin, tree);
  pt::info_parser::write_info(std::cout, tree);
}

int
main(int argc, char** argv)
{
  if (argc != 2) {
    usage();
    return 2;
  }
  std::string action(argv[1]);
  if (action == "info2json") {
    info2json();
  }
  else if (action == "json2info") {
    json2info();
  }
  else if (action == "info2xml") {
    info2xml();
  }
  else if (action == "xml2info") {
    xml2info();
  }
  else {
    usage();
    return 2;
  }
}
