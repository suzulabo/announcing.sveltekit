/* eslint-disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

export type Date = string;

export interface Announcement {
  updated: Date;
  info: {
    name: string;
  };
  posts?: Post[];
  refs?: unknown[];
}
export interface Post {
  title: string;
}
