<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 조회</title>
</head>
<body>
	<h1>이력서 조회</h1>
	<div>
		<form action="" method="get">
		<table>
			<colgroup>
				<col style="width: 170px;">
				<col style="width: 645px;">
				<col style="width: 170px;">
				<col style="width: auto;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">기간</th>
					<td colspan="3" style="position: relative;"><select
						name="date_type" style="width: 115px;" class="fSelect disabled">
							<option value="post_start" selected="selected">공고 노출</option>
							<option value="post_written_date">최초 작성일</option>
							<option value="application_start">지원 시작일</option>
							<option value="application_deadline">지원 마감일</option>
					</select> <a href="#none" class="btnDate   " date-interval="0"><span>오늘</span></a>
						<a href="#none" class="btnDate   " date-interval="1"><span>어제</span></a>
						<a href="#none" class="btnDate   " date-interval="3"><span>3일</span></a>
						<a href="#none" class="btnDate  selected " date-interval="7"><span>7일</span></a>
						<a href="#none" class="btnDate   " date-interval="15"><span>15일</span></a>
						<a href="#none" class="btnDate   " date-interval="30"><span>1개월</span></a>
						<a href="#none" class="btnDate   " date-interval="90"><span>3개월</span></a>
						<a href="#none" class="btnDate   " date-interval="180"><span>6개월</span></a>

						<div class="duet-date-picker-grid  duet-date-theme-ec-new  sun">
							<duet-date-picker first-day-of-week="0" name="start_date"
								identifier="startDate"
								class="duet-date-picker start hydrated changePicker"
								value="2024-01-29">
							<div class="duet-date">
								<div class="duet-date__input-wrapper">
									<input class="duet-date__input" placeholder="yyyy-mm-dd"
										id="startDate" aria-autocomplete="none" autocomplete="off"><input
										type="hidden" name="start_date" value="2024-01-29">
									<button class="duet-date__toggle" type="button">
										<span class="duet-date__toggle-icon theme1"><svg
												aria-hidden="true" height="24" viewBox="0 0 21 21"
												width="24" xmlns="http://www.w3.org/2000/svg">
												<g fill="none" fill-rule="evenodd"
													transform="translate(2 2)">
												<path
													d="m2.5.5h12c1.1045695 0 2 .8954305 2 2v12c0 1.1045695-.8954305 2-2 2h-12c-1.1045695 0-2-.8954305-2-2v-12c0-1.1045695.8954305-2 2-2z"
													stroke="currentColor" stroke-linecap="round"
													stroke-linejoin="round"></path>
												<path d="m.5 4.5h16" stroke="currentColor"
													stroke-linecap="round" stroke-linejoin="round"></path>
												<g fill="currentColor">
												<circle cx="8.5" cy="8.5" r="1"></circle>
												<circle cx="4.5" cy="8.5" r="1"></circle>
												<circle cx="12.5" cy="8.5" r="1"></circle>
												<circle cx="8.5" cy="12.5" r="1"></circle>
												<circle cx="4.5" cy="12.5" r="1"></circle>
												<circle cx="12.5" cy="12.5" r="1"></circle></g></g></svg></span><span
											class="duet-date__toggle-icon theme2" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="19" height="19"
												fill="none" viewBox="0 0 19 19">
												<path fill="#7C7C7C"
													d="M4 9h3v2H4V9zM4 13h3v2H4v-2zM11 9H8v2h3V9zM8 13h3v2H8v-2zM15 9h-3v2h3V9zM12 13h3v2h-3v-2z"></path>
												<path fill="#7C7C7C" fill-rule="evenodd"
													d="M4 0h1v2h9V0h1v2h3c.552 0 1 .448 1 1v15c0 .552-.448 1-1 1H1c-.552 0-1-.448-1-1V3c0-.552.448-1 1-1h3V0zM1 6h17v12H1V6z"
													clip-rule="evenodd"></path></svg></span><span
											class="duet-date__toggle-icon theme3" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="15" height="15"
												fill="none" viewBox="0 0 15 15">
												<path fill="#A1A1A1" fill-rule="evenodd"
													d="M5 0H4v1H1c-.552 0-1 .448-1 1v12c0 .552.448 1 1 1h13c.552 0 1-.448 1-1V2c0-.552-.448-1-1-1h-3V0h-1v1H5V0zm9 5H1v8.5c0 .276.224.5.5.5h12c.276 0 .5-.224.5-.5V5z"
													clip-rule="evenodd"></path></svg></span><span
											class="duet-date__toggle-icon theme4" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="none" viewBox="0 0 16 16">
												<path fill-rule="evenodd" stroke="#4F4E4E"
													stroke-linecap="round" stroke-linejoin="round"
													stroke-width="1.143"
													d="M3.429 1.905h9.142c.842 0 1.524.682 1.524 1.524v9.142c0 .842-.682 1.524-1.524 1.524H3.43c-.842 0-1.524-.682-1.524-1.524V3.43c0-.842.682-1.524 1.524-1.524z"
													clip-rule="evenodd"></path>
												<path stroke="#4F4E4E" stroke-linecap="round"
													stroke-linejoin="round" stroke-width="1.143"
													d="M1.905 4.952h12.19"></path>
												<path fill="#4F4E4E"
													d="M8 8.762c.42 0 .762-.341.762-.762 0-.42-.341-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.341.762.762.762zM4.952 8.762c.421 0 .762-.341.762-.762 0-.42-.34-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.342.762.762.762zM11.048 8.762c.42 0 .761-.341.761-.762 0-.42-.34-.762-.761-.762s-.762.341-.762.762c0 .42.34.762.762.762zM8 11.81c.42 0 .762-.342.762-.762 0-.421-.341-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.341.761.762.761zM4.952 11.81c.421 0 .762-.342.762-.762 0-.421-.34-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.342.761.762.761zM11.048 11.81c.42 0 .761-.342.761-.762 0-.421-.34-.762-.761-.762s-.762.34-.762.762c0 .42.34.761.762.761z"></path></svg></span><span
											class="duet-date__toggle-icon theme5" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="24" height="24"
												fill="none" viewBox="0 0 24 24">
												<path fill="#444B59" fill-rule="evenodd"
													d="M7 2h2v2h6V2h2v2h2c1.105 0 2 .895 2 2v13c0 1.105-.895 2-2 2H5c-1.105 0-2-.895-2-2V6c0-1.105.895-2 2-2h2V2zM5 9v10h14V9H5zm2 2h2v2H7v-2zm2 4H7v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2z"
													clip-rule="evenodd"></path></svg></span>
													<span class="duet-date__vhidden">날짜 선택<span>, 선택한 날짜는 2024-01-29</span></span>
									</button>
								</div>
								<div class="duet-date__dialog" role="dialog" aria-modal="true"
									aria-hidden="true"
									aria-labelledby="DuetDateLabel-ca497539-4421-2d25-50a6-f84d55d5707f">
									<div class="duet-date__dialog-content">
										<div class="duet-date__vhidden duet-date__instructions"
											aria-live="polite">화살표 키를 사용하여 날짜를 탐색 할 수 있습니다.</div>
										<div class="duet-date__mobile">
											<label class="duet-date__mobile-heading">날짜 선택</label>
											<button class="duet-date__close" type="button">
												<svg aria-hidden="true" fill="currentColor"
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													viewBox="0 0 24 24">
													<path d="M0 0h24v24H0V0z" fill="none"></path>
													<path
														d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg>
												<span class="duet-date__vhidden">창 닫기</span>
											</button>
										</div>
										<div class="duet-date__header">
											<div>
												<h2 id="DuetDateLabel-ca497539-4421-2d25-50a6-f84d55d5707f"
													class="duet-date__vhidden" aria-live="polite">1월 2024</h2>
												<label
													for="DuetDateMonth-23c3e199-838b-5ee4-3d04-c4848ad6fcc8"
													class="duet-date__vhidden">달</label>
												<div class="duet-date__select">
													<select
														id="DuetDateMonth-23c3e199-838b-5ee4-3d04-c4848ad6fcc8"
														class="duet-date__select--month">
														<option value="0">1월</option>
														<option value="1">2월</option>
														<option value="2">3월</option>
														<option value="3">4월</option>
														<option value="4">5월</option>
														<option value="5">6월</option>
														<option value="6">7월</option>
														<option value="7">8월</option>
														<option value="8">9월</option>
														<option value="9">10월</option>
														<option value="10">11월</option>
														<option value="11">12월</option></select>
													<div class="duet-date__select-label" aria-hidden="true">
														<span>1월</span>
														<svg fill="currentColor"
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															viewBox="0 0 24 24">
															<path
																d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
													</div>
												</div>
												<label
													for="DuetDateYear-004ed7f6-405f-0a9e-0e2d-4b14d4e93486"
													class="duet-date__vhidden">년</label>
												<div class="duet-date__select">
													<select
														id="DuetDateYear-004ed7f6-405f-0a9e-0e2d-4b14d4e93486"
														class="duet-date__select--year"><option>2014</option>
														<option>2015</option>
														<option>2016</option>
														<option>2017</option>
														<option>2018</option>
														<option>2019</option>
														<option>2020</option>
														<option>2021</option>
														<option>2022</option>
														<option>2023</option>
														<option>2024</option>
														<option>2025</option>
														<option>2026</option>
														<option>2027</option>
														<option>2028</option>
														<option>2029</option>
														<option>2030</option>
														<option>2031</option>
														<option>2032</option>
														<option>2033</option>
														<option>2034</option></select>
													<div class="duet-date__select-label" aria-hidden="true">
														<span>2024</span>
														<svg fill="currentColor"
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															viewBox="0 0 24 24">
															<path
																d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
													</div>
												</div>
											</div>
											<div class="duet-date__nav">
												<button class="duet-date__prev" type="button">
													<svg aria-hidden="true" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg" width="21" height="21"
														viewBox="0 0 24 24">
														<path
															d="M14.71 15.88L10.83 12l3.88-3.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L8.71 11.3c-.39.39-.39 1.02 0 1.41l4.59 4.59c.39.39 1.02.39 1.41 0 .38-.39.39-1.03 0-1.42z"></path></svg>
													<span class="duet-date__vhidden">이전 달</span>
												</button>
												<button class="duet-date__next" type="button">
													<svg aria-hidden="true" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg" width="21" height="21"
														viewBox="0 0 24 24">
														<path
															d="M9.29 15.88L13.17 12 9.29 8.12c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3c-.39.39-1.02.39-1.41 0-.38-.39-.39-1.03 0-1.42z"></path></svg>
													<span class="duet-date__vhidden">다음 달</span>
												</button>
											</div>
										</div>
										<table class="duet-date__table" role="grid"
											aria-labelledby="DuetDateLabel-ca497539-4421-2d25-50a6-f84d55d5707f">
											<thead>
												<tr>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">일</span><span
														class="duet-date__vhidden">일</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">월</span><span
														class="duet-date__vhidden">월</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">화</span><span
														class="duet-date__vhidden">화</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">수</span><span
														class="duet-date__vhidden">수</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">목</span><span
														class="duet-date__vhidden">목</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">금</span><span
														class="duet-date__vhidden">금</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">토</span><span
														class="duet-date__vhidden">토</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">31</span><span
																class="duet-date__vhidden">2023-12-31</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">1</span><span
																class="duet-date__vhidden">2024-01-01</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">2</span><span
																class="duet-date__vhidden">2024-01-02</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">3</span><span
																class="duet-date__vhidden">2024-01-03</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">4</span><span
																class="duet-date__vhidden">2024-01-04</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">5</span><span
																class="duet-date__vhidden">2024-01-05</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">6</span><span
																class="duet-date__vhidden">2024-01-06</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">7</span><span
																class="duet-date__vhidden">2024-01-07</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">8</span><span
																class="duet-date__vhidden">2024-01-08</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">9</span><span
																class="duet-date__vhidden">2024-01-09</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">10</span><span
																class="duet-date__vhidden">2024-01-10</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">11</span><span
																class="duet-date__vhidden">2024-01-11</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">12</span><span
																class="duet-date__vhidden">2024-01-12</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">13</span><span
																class="duet-date__vhidden">2024-01-13</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">14</span><span
																class="duet-date__vhidden">2024-01-14</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">15</span><span
																class="duet-date__vhidden">2024-01-15</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">16</span><span
																class="duet-date__vhidden">2024-01-16</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">17</span><span
																class="duet-date__vhidden">2024-01-17</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">18</span><span
																class="duet-date__vhidden">2024-01-18</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">19</span><span
																class="duet-date__vhidden">2024-01-19</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">20</span><span
																class="duet-date__vhidden">2024-01-20</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">21</span><span
																class="duet-date__vhidden">2024-01-21</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">22</span><span
																class="duet-date__vhidden">2024-01-22</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">23</span><span
																class="duet-date__vhidden">2024-01-23</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">24</span><span
																class="duet-date__vhidden">2024-01-24</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">25</span><span
																class="duet-date__vhidden">2024-01-25</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">26</span><span
																class="duet-date__vhidden">2024-01-26</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">27</span><span
																class="duet-date__vhidden">2024-01-27</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">28</span><span
																class="duet-date__vhidden">2024-01-28</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"
														aria-selected="true"><button class="duet-date__day"
															tabindex="0" type="button">
															<span aria-hidden="true">29</span><span
																class="duet-date__vhidden">2024-01-29</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">30</span><span
																class="duet-date__vhidden">2024-01-30</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">31</span><span
																class="duet-date__vhidden">2024-01-31</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															type="button" disabled="">
															<span aria-hidden="true">1</span><span
																class="duet-date__vhidden">2024-02-01</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">2</span><span
																class="duet-date__vhidden">2024-02-02</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">3</span><span
																class="duet-date__vhidden">2024-02-03</span>
														</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							</duet-date-picker>
							<input type="hidden" id="year1" name="year1" class="fText gDate"
								value="2024"> <input type="hidden" id="month1"
								name="month1" class="fText gDate" value="01"> <input
								type="hidden" id="day1" name="day1" class="fText gDate"
								value="29"> <select class="fSelect" name="start_time"
								id="start_time" disabled="" style="display: none;">
								<option value="00:00:00" selected="">00:00</option>
								<option value="01:00:00">01:00</option>
								<option value="02:00:00">02:00</option>
								<option value="03:00:00">03:00</option>
								<option value="04:00:00">04:00</option>
								<option value="05:00:00">05:00</option>
								<option value="06:00:00">06:00</option>
								<option value="07:00:00">07:00</option>
								<option value="08:00:00">08:00</option>
								<option value="09:00:00">09:00</option>
								<option value="10:00:00">10:00</option>
								<option value="11:00:00">11:00</option>
								<option value="12:00:00">12:00</option>
								<option value="13:00:00">13:00</option>
								<option value="14:00:00">14:00</option>
								<option value="15:00:00">15:00</option>
								<option value="16:00:00">16:00</option>
								<option value="17:00:00">17:00</option>
								<option value="18:00:00">18:00</option>
								<option value="19:00:00">19:00</option>
								<option value="20:00:00">20:00</option>
								<option value="21:00:00">21:00</option>
								<option value="22:00:00">22:00</option>
								<option value="23:00:00">23:00</option>
							</select> ~
							<duet-date-picker first-day-of-week="0" name="end_date"
								identifier="endDate"
								class="duet-date-picker end hydrated changePicker"
								direction="left" value="2024-02-05">
							<div class="duet-date">
								<div class="duet-date__input-wrapper">
									<input class="duet-date__input" placeholder="yyyy-mm-dd"
										id="endDate" aria-autocomplete="none" autocomplete="off"><input
										type="hidden" name="end_date" value="2024-02-05">
									<button class="duet-date__toggle" type="button">
										<span class="duet-date__toggle-icon theme1"><svg
												aria-hidden="true" height="24" viewBox="0 0 21 21"
												width="24" xmlns="http://www.w3.org/2000/svg">
												<g fill="none" fill-rule="evenodd"
													transform="translate(2 2)">
												<path
													d="m2.5.5h12c1.1045695 0 2 .8954305 2 2v12c0 1.1045695-.8954305 2-2 2h-12c-1.1045695 0-2-.8954305-2-2v-12c0-1.1045695.8954305-2 2-2z"
													stroke="currentColor" stroke-linecap="round"
													stroke-linejoin="round"></path>
												<path d="m.5 4.5h16" stroke="currentColor"
													stroke-linecap="round" stroke-linejoin="round"></path>
												<g fill="currentColor">
												<circle cx="8.5" cy="8.5" r="1"></circle>
												<circle cx="4.5" cy="8.5" r="1"></circle>
												<circle cx="12.5" cy="8.5" r="1"></circle>
												<circle cx="8.5" cy="12.5" r="1"></circle>
												<circle cx="4.5" cy="12.5" r="1"></circle>
												<circle cx="12.5" cy="12.5" r="1"></circle></g></g></svg></span><span
											class="duet-date__toggle-icon theme2" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="19" height="19"
												fill="none" viewBox="0 0 19 19">
												<path fill="#7C7C7C"
													d="M4 9h3v2H4V9zM4 13h3v2H4v-2zM11 9H8v2h3V9zM8 13h3v2H8v-2zM15 9h-3v2h3V9zM12 13h3v2h-3v-2z"></path>
												<path fill="#7C7C7C" fill-rule="evenodd"
													d="M4 0h1v2h9V0h1v2h3c.552 0 1 .448 1 1v15c0 .552-.448 1-1 1H1c-.552 0-1-.448-1-1V3c0-.552.448-1 1-1h3V0zM1 6h17v12H1V6z"
													clip-rule="evenodd"></path></svg></span><span
											class="duet-date__toggle-icon theme3" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="15" height="15"
												fill="none" viewBox="0 0 15 15">
												<path fill="#A1A1A1" fill-rule="evenodd"
													d="M5 0H4v1H1c-.552 0-1 .448-1 1v12c0 .552.448 1 1 1h13c.552 0 1-.448 1-1V2c0-.552-.448-1-1-1h-3V0h-1v1H5V0zm9 5H1v8.5c0 .276.224.5.5.5h12c.276 0 .5-.224.5-.5V5z"
													clip-rule="evenodd"></path></svg></span><span
											class="duet-date__toggle-icon theme4" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="none" viewBox="0 0 16 16">
												<path fill-rule="evenodd" stroke="#4F4E4E"
													stroke-linecap="round" stroke-linejoin="round"
													stroke-width="1.143"
													d="M3.429 1.905h9.142c.842 0 1.524.682 1.524 1.524v9.142c0 .842-.682 1.524-1.524 1.524H3.43c-.842 0-1.524-.682-1.524-1.524V3.43c0-.842.682-1.524 1.524-1.524z"
													clip-rule="evenodd"></path>
												<path stroke="#4F4E4E" stroke-linecap="round"
													stroke-linejoin="round" stroke-width="1.143"
													d="M1.905 4.952h12.19"></path>
												<path fill="#4F4E4E"
													d="M8 8.762c.42 0 .762-.341.762-.762 0-.42-.341-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.341.762.762.762zM4.952 8.762c.421 0 .762-.341.762-.762 0-.42-.34-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.342.762.762.762zM11.048 8.762c.42 0 .761-.341.761-.762 0-.42-.34-.762-.761-.762s-.762.341-.762.762c0 .42.34.762.762.762zM8 11.81c.42 0 .762-.342.762-.762 0-.421-.341-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.341.761.762.761zM4.952 11.81c.421 0 .762-.342.762-.762 0-.421-.34-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.342.761.762.761zM11.048 11.81c.42 0 .761-.342.761-.762 0-.421-.34-.762-.761-.762s-.762.34-.762.762c0 .42.34.761.762.761z"></path></svg></span><span
											class="duet-date__toggle-icon theme5" style="display: none;"><svg
												xmlns="http://www.w3.org/2000/svg" width="24" height="24"
												fill="none" viewBox="0 0 24 24">
												<path fill="#444B59" fill-rule="evenodd"
													d="M7 2h2v2h6V2h2v2h2c1.105 0 2 .895 2 2v13c0 1.105-.895 2-2 2H5c-1.105 0-2-.895-2-2V6c0-1.105.895-2 2-2h2V2zM5 9v10h14V9H5zm2 2h2v2H7v-2zm2 4H7v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2z"
													clip-rule="evenodd"></path></svg></span><span class="duet-date__vhidden">날짜
											선택<span>, 선택한 날짜는 2024-02-05</span>
										</span>
									</button>
								</div>
								<div class="duet-date__dialog is-left" role="dialog"
									aria-modal="true" aria-hidden="true"
									aria-labelledby="DuetDateLabel-9b7b296a-4668-d3d4-e805-3aa509dbc13b">
									<div class="duet-date__dialog-content">
										<div class="duet-date__vhidden duet-date__instructions"
											aria-live="polite">화살표 키를 사용하여 날짜를 탐색 할 수 있습니다.</div>
										<div class="duet-date__mobile">
											<label class="duet-date__mobile-heading">날짜 선택</label>
											<button class="duet-date__close" type="button">
												<svg aria-hidden="true" fill="currentColor"
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													viewBox="0 0 24 24">
													<path d="M0 0h24v24H0V0z" fill="none"></path>
													<path
														d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg>
												<span class="duet-date__vhidden">창 닫기</span>
											</button>
										</div>
										<div class="duet-date__header">
											<div>
												<h2 id="DuetDateLabel-9b7b296a-4668-d3d4-e805-3aa509dbc13b"
													class="duet-date__vhidden" aria-live="polite">2월 2024</h2>
												<label
													for="DuetDateMonth-f65509c3-bc12-9e37-e0a9-4a85d25c7181"
													class="duet-date__vhidden">달</label>
												<div class="duet-date__select">
													<select
														id="DuetDateMonth-f65509c3-bc12-9e37-e0a9-4a85d25c7181"
														class="duet-date__select--month"><option
															value="0">1월</option>
														<option value="1">2월</option>
														<option value="2">3월</option>
														<option value="3">4월</option>
														<option value="4">5월</option>
														<option value="5">6월</option>
														<option value="6">7월</option>
														<option value="7">8월</option>
														<option value="8">9월</option>
														<option value="9">10월</option>
														<option value="10">11월</option>
														<option value="11">12월</option></select>
													<div class="duet-date__select-label" aria-hidden="true">
														<span>2월</span>
														<svg fill="currentColor"
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															viewBox="0 0 24 24">
															<path
																d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
													</div>
												</div>
												<label
													for="DuetDateYear-2315d898-d913-86d2-fe4c-3f359ac35ec2"
													class="duet-date__vhidden">년</label>
												<div class="duet-date__select">
													<select
														id="DuetDateYear-2315d898-d913-86d2-fe4c-3f359ac35ec2"
														class="duet-date__select--year"><option>2014</option>
														<option>2015</option>
														<option>2016</option>
														<option>2017</option>
														<option>2018</option>
														<option>2019</option>
														<option>2020</option>
														<option>2021</option>
														<option>2022</option>
														<option>2023</option>
														<option>2024</option>
														<option>2025</option>
														<option>2026</option>
														<option>2027</option>
														<option>2028</option>
														<option>2029</option>
														<option>2030</option>
														<option>2031</option>
														<option>2032</option>
														<option>2033</option>
														<option>2034</option></select>
													<div class="duet-date__select-label" aria-hidden="true">
														<span>2024</span>
														<svg fill="currentColor"
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															viewBox="0 0 24 24">
															<path
																d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path></svg>
													</div>
												</div>
											</div>
											<div class="duet-date__nav">
												<button class="duet-date__prev" type="button">
													<svg aria-hidden="true" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg" width="21" height="21"
														viewBox="0 0 24 24">
														<path
															d="M14.71 15.88L10.83 12l3.88-3.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L8.71 11.3c-.39.39-.39 1.02 0 1.41l4.59 4.59c.39.39 1.02.39 1.41 0 .38-.39.39-1.03 0-1.42z"></path></svg>
													<span class="duet-date__vhidden">이전 달</span>
												</button>
												<button class="duet-date__next" type="button">
													<svg aria-hidden="true" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg" width="21" height="21"
														viewBox="0 0 24 24">
														<path
															d="M9.29 15.88L13.17 12 9.29 8.12c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3c-.39.39-1.02.39-1.41 0-.38-.39-.39-1.03 0-1.42z"></path></svg>
													<span class="duet-date__vhidden">다음 달</span>
												</button>
											</div>
										</div>
										<table class="duet-date__table" role="grid"
											aria-labelledby="DuetDateLabel-9b7b296a-4668-d3d4-e805-3aa509dbc13b">
											<thead>
												<tr>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">일</span><span
														class="duet-date__vhidden">일</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">월</span><span
														class="duet-date__vhidden">월</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">화</span><span
														class="duet-date__vhidden">화</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">수</span><span
														class="duet-date__vhidden">수</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">목</span><span
														class="duet-date__vhidden">목</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">금</span><span
														class="duet-date__vhidden">금</span></th>
													<th class="duet-date__table-header" scope="col"><span
														aria-hidden="true">토</span><span
														class="duet-date__vhidden">토</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">28</span><span
																class="duet-date__vhidden">2024-01-28</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">29</span><span
																class="duet-date__vhidden">2024-01-29</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">30</span><span
																class="duet-date__vhidden">2024-01-30</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">31</span><span
																class="duet-date__vhidden">2024-01-31</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">1</span><span
																class="duet-date__vhidden">2024-02-01</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">2</span><span
																class="duet-date__vhidden">2024-02-02</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">3</span><span
																class="duet-date__vhidden">2024-02-03</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">4</span><span
																class="duet-date__vhidden">2024-02-04</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"
														aria-selected="true"><button
															class="duet-date__day is-today" tabindex="0"
															type="button">
															<span aria-hidden="true">5</span><span
																class="duet-date__vhidden">2024-02-05</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">6</span><span
																class="duet-date__vhidden">2024-02-06</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">7</span><span
																class="duet-date__vhidden">2024-02-07</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">8</span><span
																class="duet-date__vhidden">2024-02-08</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">9</span><span
																class="duet-date__vhidden">2024-02-09</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">10</span><span
																class="duet-date__vhidden">2024-02-10</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">11</span><span
																class="duet-date__vhidden">2024-02-11</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">12</span><span
																class="duet-date__vhidden">2024-02-12</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">13</span><span
																class="duet-date__vhidden">2024-02-13</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">14</span><span
																class="duet-date__vhidden">2024-02-14</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">15</span><span
																class="duet-date__vhidden">2024-02-15</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">16</span><span
																class="duet-date__vhidden">2024-02-16</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">17</span><span
																class="duet-date__vhidden">2024-02-17</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">18</span><span
																class="duet-date__vhidden">2024-02-18</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">19</span><span
																class="duet-date__vhidden">2024-02-19</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">20</span><span
																class="duet-date__vhidden">2024-02-20</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">21</span><span
																class="duet-date__vhidden">2024-02-21</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">22</span><span
																class="duet-date__vhidden">2024-02-22</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">23</span><span
																class="duet-date__vhidden">2024-02-23</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">24</span><span
																class="duet-date__vhidden">2024-02-24</span>
														</button></td>
												</tr>
												<tr class="duet-date__row">
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">25</span><span
																class="duet-date__vhidden">2024-02-25</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">26</span><span
																class="duet-date__vhidden">2024-02-26</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">27</span><span
																class="duet-date__vhidden">2024-02-27</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">28</span><span
																class="duet-date__vhidden">2024-02-28</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day" tabindex="-1" type="button">
															<span aria-hidden="true">29</span><span
																class="duet-date__vhidden">2024-02-29</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">1</span><span
																class="duet-date__vhidden">2024-03-01</span>
														</button></td>
													<td class="duet-date__cell" role="gridcell"><button
															class="duet-date__day is-disabled" tabindex="-1"
															disabled="" type="button">
															<span aria-hidden="true">2</span><span
																class="duet-date__vhidden">2024-03-02</span>
														</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							</duet-date-picker>
							<input type="hidden" id="year2" name="year2" class="fText gDate"
								value="2024"> <input type="hidden" id="month2"
								name="month2" class="fText gDate" value="02"> <input
								type="hidden" id="day2" name="day2" class="fText gDate"
								value="05"> <select class="fSelect" name="end_time"
								id="end_time" disabled="" style="display: none;">
								<option value="00:59:59">00:59</option>
								<option value="01:59:59">01:59</option>
								<option value="02:59:59">02:59</option>
								<option value="03:59:59">03:59</option>
								<option value="04:59:59">04:59</option>
								<option value="05:59:59">05:59</option>
								<option value="06:59:59">06:59</option>
								<option value="07:59:59">07:59</option>
								<option value="08:59:59">08:59</option>
								<option value="09:59:59">09:59</option>
								<option value="10:59:59">10:59</option>
								<option value="11:59:59">11:59</option>
								<option value="12:59:59">12:59</option>
								<option value="13:59:59">13:59</option>
								<option value="14:59:59">14:59</option>
								<option value="15:59:59">15:59</option>
								<option value="16:59:59">16:59</option>
								<option value="17:59:59">17:59</option>
								<option value="18:59:59">18:59</option>
								<option value="19:59:59">19:59</option>
								<option value="20:59:59">20:59</option>
								<option value="21:59:59">21:59</option>
								<option value="22:59:59">22:59</option>
								<option value="23:59:59" selected="">23:59</option>
							</select> <input type="hidden" id="btnDate" name="btnDate" value="7">
						</div> <a href="#ordOption5"
						class="btnNormal eLayerClick ec-order-list-search-period"><span>기간
								설정</span></a> <input type="hidden" name="today" id="today"
						value="2024-02-05">

						<div class="duet-date-message-layer direction"
							style="top: -26px; left: 525px; z-index: 99; display: none;">
							<p class="msg">올바른 날짜를 입력하세요.</p>
						</div></td>
				</tr>

				<tr>
					<th scope="row">검색어
						<div class="cTip" code="OR.SM.DB.40">
							<div class="mTooltip gLarge">
								<button type="button" class="icon eTip">도움말</button>
								<div class="tooltip" style="z-index: 1;">
									<div class="content"></div>
									<button type="button" class="close eClose">닫기</button>
									<span class="edge"></span>
								</div>
							</div>
						</div>
					</th>
					<td colspan="3">
						<div id="mainSearch">
							<div class="keywordSearchSelect ">
								<select class="fSelect" name="MSK[]" style="width: 163px;">
									<option value="choice">-검색항목선택-</option>
									<option value="posting_name" selected="">채용공고</option>
									<option value="name">이름</option>
									<option value="phone">휴대폰번호</option>
								</select> <input type="text" class="fText sBaseSearchBox eSearchText"
									name="MSV[]" id="sBaseSearchBox" style="width: 400px;" value="">

								<a href="#none" class="btnIcon icoPlus"><span>추가</span></a> 
								<a href="#none" class="btnNormal productSearchBtn" style="display: none;"> <span>상품찾기 <em
										class="icoLink"></em></span>
								</a> <input type="hidden" name="order_product_no[]" id="eOrderProductNo" value="">
							</div>
							<div class="keywordSearchSelect  gSingle">
								<select class="fSelect" name="MSK[]" style="width: 163px;">
									<option value="choice">-검색항목선택-</option>
									<option value="posting_name" selected="">채용공고</option>
									<option value="name">이름</option>
									<option value="phone">휴대폰번호</option>
								</select> <input type="text" class="fText sBaseSearchBox eSearchText"
									name="MSV[]" id="sBaseSearchBox" style="width: 400px;" value="">

								<a href="#none" class="btnIcon icoMinus"><span>추가</span></a> <a
									href="#none" class="btnNormal productSearchBtn"
									style="display: inline-block;"> <span>공고찾기<em class="icoLink"></em></span>
								</a> <input type="hidden" name="order_product_no[]"
									id="eOrderProductNo" value="">
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<button type="submit">검색</button>
		</form>
	</div>

	<!-- 지원자 이력서 목록 -->
	<div class="resume_table_wrap">
		<table class="resume_table">
			<thead class="resume_table_th">
				<tr>
					<th>이력서ID</th>
					<th>채용공고</th>
					<th>부서</th>
					<th>직무</th>
					<th>고용형태</th>
					<th>이름</th>
					<th>회원ID</th>
					<th>만나이</th>
					<th>경력조건</th>
					<th>지원날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="resumeItem" items="${resumeList}">
					<tr>
						<td>${resumeItem.resumeId}</td>
						<td>${resumeItem.postingTitle}</td>
						<td>${resumeItem.jobs}</td>
						<td>${resumeItem.employmentType}</td>
						<a href="/admin/resumeDetail?resumeId=${resumeItem.resumeId}"></a><td>${resumeItem.name}</td></a>
						<td>${resumeItem.userId}</td>
						<td>${resumeItem.userAge}</td>
						<td>${resumeItem.career}</td>
						<td>${resumeItem.appliedDate}</td>
						<td>
							<button onclick="resume_status()">
							
							</button>
						</td>
					</tr>
			</tbody>
			</c:forEach>
		</table>


	</div>
	<!-- 지원자 이력서 목록 -->


<script>
	//onclick 바로 호출 GET방식
	//onclick confirm 물어보고 GET방식
	//onclick 바로 호출 POST방식(form)
	//onclikc confirm 물어보고 POST방식(form)
		
		let removeBtns = document.querySelectorAll('.btn_removeRoom');
	
		removeBtns.forEach(function(item){
			item.addEventListener('click', (e)=>{
				
				console.log(e);
				console.log(e.target);
				console.log(e.target.dataset.roomid);
				
				let roomId = e.target.dataset.roomid;
				
				console.log('삭제 버튼 눌림');
				location.href='/admin/removeRoom?roomId=' + roomId;
				
				/*
				document.getElementById('input_roomId').value = roomId;
				document.getElementById('frm_removeRoom').submit();
				*/
				
			});
		})
	
	/*
	function removeRoom(roomId){
		if(confirm("정말 삭제하시겠습니까?")){
			document.getElementById('input_roomId').value = roomId;
			document.getElementById('frm_removeRoom').submit();
		}
	} */
		/* 
		function removeRoom(roomId){
			if(confirm("정말 삭제하시겠습니까?")){
				//확인을 눌렀다
				console.log('삭제 확인 누름');
				console.log('넘어온 roomId 값 : ' + roomId);
				location.href='/admin/removeRoom?roomId=' + roomId;
			}	
			//취소 누르면 아무것도 안함
		} */
	</script>

</body>
</html>