# coding: utf-8

"""
    API V1

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    OpenAPI spec version: v1
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class SubmissionDataRequest(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'id': 'str',
        'name': 'str',
        'email': 'str',
        'order': 'float',
        'fields': 'list[str]',
        'metadata': 'object',
        'state': 'str',
        'viewed_at': 'str',
        'completed_at': 'str'
    }

    attribute_map = {
        'id': 'id',
        'name': 'name',
        'email': 'email',
        'order': 'order',
        'fields': 'fields',
        'metadata': 'metadata',
        'state': 'state',
        'viewed_at': 'viewed_at',
        'completed_at': 'completed_at'
    }

    def __init__(self, id=None, name=None, email=None, order=None, fields=None, metadata=None, state=None, viewed_at=None, completed_at=None):  # noqa: E501
        """SubmissionDataRequest - a model defined in OpenAPI"""  # noqa: E501

        self._id = None
        self._name = None
        self._email = None
        self._order = None
        self._fields = None
        self._metadata = None
        self._state = None
        self._viewed_at = None
        self._completed_at = None
        self.discriminator = None

        self.id = id
        self.name = name
        self.email = email
        self.order = order
        self.fields = fields
        self.metadata = metadata
        self.state = state
        self.viewed_at = viewed_at
        self.completed_at = completed_at

    @property
    def id(self):
        """Gets the id of this SubmissionDataRequest.  # noqa: E501


        :return: The id of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this SubmissionDataRequest.


        :param id: The id of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")  # noqa: E501

        self._id = id

    @property
    def name(self):
        """Gets the name of this SubmissionDataRequest.  # noqa: E501


        :return: The name of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this SubmissionDataRequest.


        :param name: The name of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def email(self):
        """Gets the email of this SubmissionDataRequest.  # noqa: E501


        :return: The email of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email):
        """Sets the email of this SubmissionDataRequest.


        :param email: The email of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if email is None:
            raise ValueError("Invalid value for `email`, must not be `None`")  # noqa: E501

        self._email = email

    @property
    def order(self):
        """Gets the order of this SubmissionDataRequest.  # noqa: E501


        :return: The order of this SubmissionDataRequest.  # noqa: E501
        :rtype: float
        """
        return self._order

    @order.setter
    def order(self, order):
        """Sets the order of this SubmissionDataRequest.


        :param order: The order of this SubmissionDataRequest.  # noqa: E501
        :type: float
        """
        if order is None:
            raise ValueError("Invalid value for `order`, must not be `None`")  # noqa: E501

        self._order = order

    @property
    def fields(self):
        """Gets the fields of this SubmissionDataRequest.  # noqa: E501


        :return: The fields of this SubmissionDataRequest.  # noqa: E501
        :rtype: list[str]
        """
        return self._fields

    @fields.setter
    def fields(self, fields):
        """Sets the fields of this SubmissionDataRequest.


        :param fields: The fields of this SubmissionDataRequest.  # noqa: E501
        :type: list[str]
        """
        if fields is None:
            raise ValueError("Invalid value for `fields`, must not be `None`")  # noqa: E501

        self._fields = fields

    @property
    def metadata(self):
        """Gets the metadata of this SubmissionDataRequest.  # noqa: E501


        :return: The metadata of this SubmissionDataRequest.  # noqa: E501
        :rtype: object
        """
        return self._metadata

    @metadata.setter
    def metadata(self, metadata):
        """Sets the metadata of this SubmissionDataRequest.


        :param metadata: The metadata of this SubmissionDataRequest.  # noqa: E501
        :type: object
        """
        if metadata is None:
            raise ValueError("Invalid value for `metadata`, must not be `None`")  # noqa: E501

        self._metadata = metadata

    @property
    def state(self):
        """Gets the state of this SubmissionDataRequest.  # noqa: E501


        :return: The state of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state):
        """Sets the state of this SubmissionDataRequest.


        :param state: The state of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if state is None:
            raise ValueError("Invalid value for `state`, must not be `None`")  # noqa: E501
        allowed_values = ["pending", "complete"]  # noqa: E501
        if state not in allowed_values:
            raise ValueError(
                "Invalid value for `state` ({0}), must be one of {1}"  # noqa: E501
                .format(state, allowed_values)
            )

        self._state = state

    @property
    def viewed_at(self):
        """Gets the viewed_at of this SubmissionDataRequest.  # noqa: E501


        :return: The viewed_at of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._viewed_at

    @viewed_at.setter
    def viewed_at(self, viewed_at):
        """Sets the viewed_at of this SubmissionDataRequest.


        :param viewed_at: The viewed_at of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if viewed_at is None:
            raise ValueError("Invalid value for `viewed_at`, must not be `None`")  # noqa: E501

        self._viewed_at = viewed_at

    @property
    def completed_at(self):
        """Gets the completed_at of this SubmissionDataRequest.  # noqa: E501


        :return: The completed_at of this SubmissionDataRequest.  # noqa: E501
        :rtype: str
        """
        return self._completed_at

    @completed_at.setter
    def completed_at(self, completed_at):
        """Sets the completed_at of this SubmissionDataRequest.


        :param completed_at: The completed_at of this SubmissionDataRequest.  # noqa: E501
        :type: str
        """
        if completed_at is None:
            raise ValueError("Invalid value for `completed_at`, must not be `None`")  # noqa: E501

        self._completed_at = completed_at

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
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
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, SubmissionDataRequest):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other