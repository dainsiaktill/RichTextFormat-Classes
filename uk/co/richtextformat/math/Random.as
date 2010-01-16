﻿package uk.co.richtextformat.math {	public class Random 	{		public static const DEFAULT					:String =		"RandomNumberGenerator_default";		public static const INTEGER					:String =		"RandomNumberGenerator_integer";				public static function generate ( lo:Number=0, hi:Number=1, type:String=DEFAULT ):Number		{			var r:Number;			switch (type){				case INTEGER:				r = _getInt(lo,hi);				break;				case DEFAULT:				r = _getFloat(lo,hi);				break;			}			return r;		}				private static function _getInt (lo:Number, hi:Number):int		{			return int( _getFloat( 0, (hi-lo)+0.9999 ) )+lo;		}				private static function _getFloat (lo:Number ,hi:Number):Number		{			return ( Math.random()*(hi-lo) ) +lo;		}	}}