% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, encode, [base(11), 3639], [2, 8, 0, 9]).
io(2, roundtrips, [caesar(13), []], error("existence_error(procedure,cases:roundtrips/3)")).
io(3, check, [base(5), [1020]], []).
io(4, encode, [base(8), 73], [1, 1, 1]).
io(5, roundtrips, [rle, [c, b, b, b, b, a, a, c, c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(6, check, [rle_capped, [[b, b]]], []).
io(7, encode, [base(7), 967], [2, 5, 5, 1]).
io(8, roundtrips, [rle, [a, a, b, a, a, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(9, check, [rle_capped, [[b, b, a, c], [b, c, c, b], [], [b, b, b, b]]], [[b, b, b, b]]).
io(10, encode, [base(8), 984], [1, 7, 3, 0]).
io(11, roundtrips, [base(15), 1686], error("existence_error(procedure,cases:roundtrips/3)")).
io(12, check, [rle_capped, [[a, b, a, b, c, c, b]]], []).
io(13, encode, [base(14), 925], [4, 10, 1]).
io(14, roundtrips, [rle, [b, a, b, c, c, c, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(15, check, [caesar(25), [[z, z, h, d, e, h], [l, r, r, r], [e, l, w, o, z, o], []]], []).
io(16, encode, [rle, [a, b, c, c, a, c]], [a-1, b-1, c-2, a-1, c-1]).
io(17, roundtrips, [rle, []], error("existence_error(procedure,cases:roundtrips/3)")).
io(18, check, [rle, [[c, a, a, b], [c, a, a, b, b, a, a]]], []).
io(19, encode, [caesar(11), [r]], [c]).
io(20, roundtrips, [caesar(24), [h, d]], error("existence_error(procedure,cases:roundtrips/3)")).
io(21, check, [base(16), [1798, 2401]], []).
io(22, encode, [base(7), 1740], [5, 0, 3, 4]).
io(23, roundtrips, [caesar(10), [z, h, z]], error("existence_error(procedure,cases:roundtrips/3)")).
io(24, check, [base(12), [3715, 1884, 1707]], []).
io(25, encode, [caesar(2), [r]], [t]).
io(26, roundtrips, [rle, [c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(27, check, [rle, [[a, a, b, a, c], [b, b, c, c]]], []).
io(28, encode, [base(7), 4847], [2, 0, 0, 6, 3]).
io(29, roundtrips, [rle, [c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(30, check, [base(10), [568, 3239]], []).
io(31, encode, [base(8), 3089], [6, 0, 2, 1]).
io(32, roundtrips, [caesar(18), []], error("existence_error(procedure,cases:roundtrips/3)")).
io(33, check, [rle, [[b, b, a, c, a, b], [b, b, b, c, b, a, b, a, a]]], []).
io(34, encode, [base(5), 1575], [2, 2, 3, 0, 0]).
io(35, roundtrips, [base(3), 866], error("existence_error(procedure,cases:roundtrips/3)")).
io(36, check, [base(16), [1224, 4441]], []).
io(37, encode, [base(6), 133], [3, 4, 1]).
io(38, roundtrips, [base(2), 1697], error("existence_error(procedure,cases:roundtrips/3)")).
io(39, check, [base(8), [2868, 3131]], []).
io(40, encode, [base(14), 1475], [7, 7, 5]).
io(41, roundtrips, [rle, [c, c, b, b, a, c, b, b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(42, check, [caesar(25), [[l, l, o], [r, z, w, r], [r, z, h, l, h], []]], []).
io(43, encode, [rle_capped, [c, c, b, b]], [c-2, b-2]).
io(44, roundtrips, [rle, [b, a, b, b, c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(45, check, [rle_capped, [[c, c, b, c, c], [a, b, b, a, a, c], [], [b, b, b, b, c, c, a]]], [[b, b, b, b, c, c, a]]).
io(46, encode, [rle_capped, [b, b, b]], [b-3]).
io(47, roundtrips, [rle, [b, a, a, c, a, c, a, c, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(48, check, [base(13), [4704]], []).
io(49, encode, [rle_capped, [c, a, a, c, a, b]], [c-1, a-2, c-1, a-1, b-1]).
io(50, roundtrips, [base(4), 2811], error("existence_error(procedure,cases:roundtrips/3)")).
io(51, check, [base(2), [4431, 2605, 2142]], []).
io(52, encode, [caesar(13), []], []).
io(53, roundtrips, [caesar(23), [h, w, h, z, w, e]], error("existence_error(procedure,cases:roundtrips/3)")).
io(54, check, [caesar(4), [[z, z, z, o], [], [d, z]]], []).
io(55, encode, [base(2), 3099], [1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1]).
io(56, roundtrips, [caesar(12), [d, o]], error("existence_error(procedure,cases:roundtrips/3)")).
io(57, check, [caesar(11), [[z, z, e, r, z, o], [h], [w, d]]], []).
io(58, encode, [caesar(23), [e]], [b]).
io(59, roundtrips, [rle_capped, [a, c, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(60, check, [rle_capped, [[b], [c, b, c], [b, a]]], []).
io(61, encode, [rle_capped, [b, b]], [b-2]).
io(62, roundtrips, [base(2), 4613], error("existence_error(procedure,cases:roundtrips/3)")).
io(63, check, [rle, [[b, c, a, b], [c], [c, b, c, b], [b, b]]], []).
io(64, encode, [rle_capped, [b, c, a, b, b]], [b-1, c-1, a-1, b-2]).
io(65, roundtrips, [caesar(16), [o, e]], error("existence_error(procedure,cases:roundtrips/3)")).
io(66, check, [caesar(4), [[], [z, h, z, e, e, z], [o, h]]], []).
io(67, encode, [rle, [b, a]], [b-1, a-1]).
io(68, roundtrips, [base(10), 4910], error("existence_error(procedure,cases:roundtrips/3)")).
io(69, check, [rle, [[b, b, b], [c], [b], [a, b, b, b]]], []).
io(70, encode, [rle_capped, [b, c, b]], [b-1, c-1, b-1]).
io(71, roundtrips, [rle_capped, [a, b, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(72, check, [rle_capped, [[c, b]]], []).
io(73, encode, [base(9), 1637], [2, 2, 1, 8]).
io(74, roundtrips, [rle, [b, a, b, c, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(75, check, [rle, [[b, b, b, a, a, b, c, a], [a, b, c, b, c, c], [c, b, b, b]]], []).
io(76, encode, [rle_capped, [b, a, c]], [b-1, a-1, c-1]).
io(77, roundtrips, [rle, [b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(78, check, [base(15), [864, 4146, 4272]], []).
io(79, encode, [base(16), 675], [2, 10, 3]).
io(80, roundtrips, [rle_capped, [c, c, b, b, a, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(81, check, [rle_capped, [[b, b, c, a, a, a], [a, c, a, a, c, c]]], []).
io(82, encode, [base(8), 2558], [4, 7, 7, 6]).
io(83, roundtrips, [caesar(8), [e, r, z, h, w]], error("existence_error(procedure,cases:roundtrips/3)")).
io(84, check, [caesar(16), [[d, o, e], [r, l], [o, e, d, r], [d, w, z]]], []).
io(85, encode, [base(5), 3017], [4, 4, 0, 3, 2]).
io(86, roundtrips, [caesar(7), [d]], error("existence_error(procedure,cases:roundtrips/3)")).
io(87, check, [caesar(22), [[], [e, l, d, l, l], []]], []).
io(88, encode, [rle_capped, [b, b, b, a, b, c, a]], [b-3, a-1, b-1, c-1, a-1]).
io(89, roundtrips, [rle_capped, [b, a, b, b, b, b, a, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(90, check, [base(16), [3349, 1113]], []).
io(91, encode, [caesar(13), [d, d]], [q, q]).
io(92, roundtrips, [rle, [a, c, b, c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(93, check, [rle, [[b, a, b, b], []]], []).
io(94, encode, [rle_capped, [c, a, c, a, a, b]], [c-1, a-1, c-1, a-2, b-1]).
io(95, roundtrips, [base(3), 2291], error("existence_error(procedure,cases:roundtrips/3)")).
io(96, check, [base(16), [1793, 374]], []).
io(97, encode, [rle_capped, [b, c, b, b, b, a, c, b]], [b-1, c-1, b-3, a-1, c-1, b-1]).
io(98, roundtrips, [rle_capped, [b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(99, check, [base(5), [2450, 979]], []).
io(100, encode, [caesar(20), [w]], [q]).
io(101, roundtrips, [base(13), 535], error("existence_error(procedure,cases:roundtrips/3)")).
io(102, check, [base(8), [1996, 4193, 2485]], []).
io(103, encode, [rle, [b, b, c, c]], [b-2, c-2]).
io(104, roundtrips, [caesar(12), [e, o]], error("existence_error(procedure,cases:roundtrips/3)")).
io(105, check, [base(2), [819, 2617, 4734]], []).
io(106, encode, [rle, [b, b, a, b, c, a]], [b-2, a-1, b-1, c-1, a-1]).
io(107, roundtrips, [rle_capped, [a, a, a, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(108, check, [rle_capped, [[c, b, a, a]]], []).
io(109, encode, [caesar(1), [r, e, r]], [s, f, s]).
io(110, roundtrips, [rle, [b, b, c, a, b, b, c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(111, check, [rle_capped, [[a, b, c, c], [b, c, b]]], []).
io(112, encode, [caesar(21), [h, d, d, o, l]], [c, y, y, j, g]).
io(113, roundtrips, [rle_capped, [a, a, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(114, check, [rle_capped, [[c, c, b, c, b, c], [b], [b, b, b, b, a, c, b], [b, a, c, c, a, a, c, b]]], [[b, b, b, b, a, c, b]]).
io(115, encode, [rle_capped, []], []).
io(116, roundtrips, [caesar(19), [o, z, d, o, z, l]], error("existence_error(procedure,cases:roundtrips/3)")).
io(117, check, [base(8), [2857, 2047, 3113]], []).
io(118, encode, [caesar(12), []], []).
io(119, roundtrips, [base(16), 4878], error("existence_error(procedure,cases:roundtrips/3)")).
io(120, check, [base(2), [2638, 1007, 787]], []).
io(121, encode, [rle, [a, b, a, b, a, b, a, a]], [a-1, b-1, a-1, b-1, a-1, b-1, a-2]).
io(122, roundtrips, [rle_capped, [b, b, c, c, b, b, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(123, check, [rle_capped, [[b], [], []]], []).
io(124, encode, [rle, [b, b, b]], [b-3]).
io(125, roundtrips, [base(11), 3442], error("existence_error(procedure,cases:roundtrips/3)")).
io(126, check, [rle_capped, [[c, b, b, c, a, b, b]]], []).
io(127, encode, [caesar(2), [r]], [t]).
io(128, roundtrips, [rle_capped, [c, b, b, a, b, b, b, a, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(129, check, [rle_capped, [[c, c, b, b, b, c, a, b, a], [b, a, b, a, c]]], []).
io(130, encode, [base(5), 1360], [2, 0, 4, 2, 0]).
io(131, roundtrips, [caesar(13), [r]], error("existence_error(procedure,cases:roundtrips/3)")).
io(132, check, [rle, [[a, a, b, b, a, b, b, b, b], [b, c, b, a, a, c, b, c], [b]]], []).
io(133, encode, [rle, [b, b, c]], [b-2, c-1]).
io(134, roundtrips, [rle_capped, [b, a, a, b, a, b, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(135, check, [rle_capped, [[b], [b, b, b, b], [b, a, b, b, b, b, b], [c, c, c, b, b]]], [[b, b, b, b], [b, a, b, b, b, b, b]]).
io(136, encode, [caesar(4), []], []).
io(137, roundtrips, [caesar(8), [o, o, z, e, w]], error("existence_error(procedure,cases:roundtrips/3)")).
io(138, check, [caesar(7), [[z, z, d, h], [w, w, w, z, d], [w, l, o]]], []).
io(139, encode, [rle_capped, [b, a, a, c, c, a, b, b]], [b-1, a-2, c-2, a-1, b-2]).
io(140, roundtrips, [rle, [b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(141, check, [rle, [[b, c, b, b, b, b, a, a], [c, b, a, b, b], []]], []).
io(142, encode, [base(11), 1503], [1, 1, 4, 7]).
io(143, roundtrips, [rle, [a, a, b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(144, check, [rle, [[c], [b, b, a, c, b, b]]], []).
io(145, encode, [caesar(23), [w, w, e, l, l]], [t, t, b, i, i]).
io(146, roundtrips, [base(11), 1548], error("existence_error(procedure,cases:roundtrips/3)")).
io(147, check, [rle_capped, [[b, b], [b, a, b, a, b, c], [b, b, b, b, a]]], [[b, b, b, b, a]]).
io(148, encode, [rle_capped, [a, b, c]], [a-1, b-1, c-1]).
io(149, roundtrips, [caesar(7), [z, e, z, w, o, o]], error("existence_error(procedure,cases:roundtrips/3)")).
io(150, check, [rle, [[a, b, b], [b, b, a], [b, a, c, c, c]]], []).
io(151, encode, [rle, [a, a]], [a-2]).
io(152, roundtrips, [rle_capped, [c]], error("existence_error(procedure,cases:roundtrips/3)")).
io(153, check, [rle, [[b, a], [b, c, a, a, b], [c, a, a, b, b, a, a], [b]]], []).
io(154, encode, [rle_capped, [c]], [c-1]).
io(155, roundtrips, [rle, [a, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(156, check, [base(10), [2359, 2177]], []).
io(157, encode, [base(12), 2719], [1, 6, 10, 7]).
io(158, roundtrips, [caesar(14), []], error("existence_error(procedure,cases:roundtrips/3)")).
io(159, check, [caesar(0), [[e, l, e, l, l, o], [], [e, w, o, o], [e, z, w, w]]], []).
io(160, encode, [rle_capped, [c, a, b, b, c, c, b, a]], [c-1, a-1, b-2, c-2, b-1, a-1]).
io(161, roundtrips, [base(3), 4573], error("existence_error(procedure,cases:roundtrips/3)")).
io(162, check, [caesar(10), [[l, h, l]]], []).
io(163, encode, [rle, [c, a, c, a, b, a, b]], [c-1, a-1, c-1, a-1, b-1, a-1, b-1]).
io(164, roundtrips, [base(5), 738], error("existence_error(procedure,cases:roundtrips/3)")).
io(165, check, [rle, [[b, b, b, c, b, a, b, a, a], [b, b]]], []).
io(166, encode, [base(8), 3214], [6, 2, 1, 6]).
io(167, roundtrips, [base(10), 1495], error("existence_error(procedure,cases:roundtrips/3)")).
io(168, check, [base(16), [3358, 1533, 1611]], []).
io(169, encode, [rle, [b, a, b]], [b-1, a-1, b-1]).
io(170, roundtrips, [caesar(10), [e]], error("existence_error(procedure,cases:roundtrips/3)")).
io(171, check, [caesar(24), [[o, l, r, h, o, r], [h, o, r, o], [d, d, z, r], [o, h, e]]], []).
io(172, encode, [caesar(19), [w, d, w]], [p, w, p]).
io(173, roundtrips, [rle, [a, c, c, b, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(174, check, [rle, [[a], [b, c, b, c, b, c, c, b, c], [a, a, b, b, a], [c, b]]], []).
io(175, encode, [rle_capped, [b, b, b, c, c, a, b]], [b-3, c-2, a-1, b-1]).
io(176, roundtrips, [rle_capped, [b, b, a, b, b, a, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(177, check, [caesar(22), [[z, e, d], [w, e, e, h, o], [w, z, h, l, l, d], [l, h]]], []).
io(178, encode, [base(5), 3319], [1, 0, 1, 2, 3, 4]).
io(179, roundtrips, [base(7), 17], error("existence_error(procedure,cases:roundtrips/3)")).
io(180, check, [rle, [[b], [a, a], [a, b, c, b, b], [c, c, c, c, a, b]]], []).
io(181, encode, [base(3), 4782], [2, 0, 1, 2, 0, 0, 1, 0]).
io(182, roundtrips, [caesar(5), [h, r, l, z]], error("existence_error(procedure,cases:roundtrips/3)")).
io(183, check, [caesar(9), [[o, o, r, e, o], [d, w, h, h, l, o], []]], []).
io(184, encode, [caesar(13), [e, w, o, w, r, d]], [r, j, b, j, e, q]).
io(185, roundtrips, [caesar(22), [z, d, o, d, e]], error("existence_error(procedure,cases:roundtrips/3)")).
io(186, check, [rle, [[b, b, b, c], [a, c]]], []).
io(187, encode, [base(15), 2222], [9, 13, 2]).
io(188, roundtrips, [rle, [c, c, a, c, b, c, b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
io(189, check, [base(10), [1656, 2100]], []).
io(190, encode, [caesar(16), [e, z, w]], [u, p, m]).
io(191, roundtrips, [rle_capped, [b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(192, check, [caesar(18), [[l, o], [o, r, r, o, l, z], [h, w, r, w, d, w]]], []).
io(193, encode, [caesar(4), [z]], [d]).
io(194, roundtrips, [rle_capped, [b, b, c, c, b, b, a, b, b]], error("existence_error(procedure,cases:roundtrips/3)")).
io(195, check, [rle_capped, [[b, c, b, b, c], [b, b, b, a, b, c, b, b]]], []).
io(196, encode, [base(6), 205], [5, 4, 1]).
io(197, roundtrips, [caesar(0), [e, o, l]], error("existence_error(procedure,cases:roundtrips/3)")).
io(198, check, [rle, [[b, b, b, a], [b, c, a, b, a, b, c, b], [c, a, c, b, b]]], []).
io(199, encode, [rle_capped, [c, b, a, c, a]], [c-1, b-1, a-1, c-1, a-1]).
io(200, roundtrips, [rle, [a, b, a, b, b, a]], error("existence_error(procedure,cases:roundtrips/3)")).
