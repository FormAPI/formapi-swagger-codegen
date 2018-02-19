# coding: utf-8

"""
    API V1

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

    OpenAPI spec version: v1

    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from pprint import pformat
from six import iteritems
import re


class Data1(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """


    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'test': 'bool',
        'data': 'object',
        'metadata': 'object'
    }

    attribute_map = {
        'test': 'test',
        'data': 'data',
        'metadata': 'metadata'
    }

    def __init__(self, test=None, data=None, metadata=None):
        """
        Data1 - a model defined in Swagger
        """

        self._test = None
        self._data = None
        self._metadata = None
        self.discriminator = None

        if test is not None:
          self.test = test
        self.data = data
        if metadata is not None:
          self.metadata = metadata

    @property
    def test(self):
        """
        Gets the test of this Data1.

        :return: The test of this Data1.
        :rtype: bool
        """
        return self._test

    @test.setter
    def test(self, test):
        """
        Sets the test of this Data1.

        :param test: The test of this Data1.
        :type: bool
        """

        self._test = test

    @property
    def data(self):
        """
        Gets the data of this Data1.

        :return: The data of this Data1.
        :rtype: object
        """
        return self._data

    @data.setter
    def data(self, data):
        """
        Sets the data of this Data1.

        :param data: The data of this Data1.
        :type: object
        """
        if data is None:
            raise ValueError("Invalid value for `data`, must not be `None`")

        self._data = data

    @property
    def metadata(self):
        """
        Gets the metadata of this Data1.

        :return: The metadata of this Data1.
        :rtype: object
        """
        return self._metadata

    @metadata.setter
    def metadata(self, metadata):
        """
        Sets the metadata of this Data1.

        :param metadata: The metadata of this Data1.
        :type: object
        """

        self._metadata = metadata

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other):
        """
        Returns true if both objects are equal
        """
        if not isinstance(other, Data1):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
