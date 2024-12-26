

<?php $__env->startSection('subhead'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('subcontent'); ?>
    <div class="loader"></div>
    <form id="editastrologer" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <div class="grid grid-cols-12 gap-6 mt-5">
            <div class="intro-y col-span-12 overflow-auto lg:overflow-visible ">
            </div>
        </div>
        <!-- BEGIN: Profile Info -->
        <div class="intro-y box  pt-5 mt-5">
            <div id="link-tab" class="p-3">
                <button type="submit"class="btn btn-primary shadow-md mr-2 d-inline addbtn">Save
                </button>
                <ul class="nav nav-link-tabs" role="tablist">
                    <li id="example-1-tab" class="nav-item flex-1" role="presentation">
                        <button class="nav-link w-full py-2 active" data-tw-toggle="pill" data-tw-target="#example-tab-1"
                            type="button" role="tab" aria-controls="example-tab-1" aria-selected="true">
                            Personal Detail
                        </button>
                    </li>
                    <li id="example-2-tab" class="nav-item flex-1" role="presentation">
                        <button class="nav-link w-full py-2" data-tw-toggle="pill" data-tw-target="#example-tab-2"
                            type="button" role="tab" aria-controls="example-tab-2" aria-selected="false">
                            Skill Detail
                        </button>
                    </li>
                    <li id="example-3-tab" class="nav-item flex-1" role="presentation">
                        <button class="nav-link w-full py-2" data-tw-toggle="pill" data-tw-target="#example-tab-3"
                            type="button" role="tab" aria-controls="example-tab-3" aria-selected="false">
                            Other Details
                        </button>
                    </li>
                    <li id="example-4-tab" class="nav-item flex-1" role="presentation">
                        <button class="nav-link w-full py-2" data-tw-toggle="pill" data-tw-target="#example-tab-4"
                            type="button" role="tab" aria-controls="example-tab-4" aria-selected="false">
                            Availability
                        </button>
                    </li>
                </ul>

                <div class="tab-content mt-5 editastrologertab">
                    <div id="example-tab-1" class="tab-pane leading-relaxed active" role="tabpanel"
                        aria-labelledby="example-1-tab">
                        <div class="input">
                            <div>
                                <input type="hidden" name="id" id="id" class="form-control"
                                    placeholder="Customer Name" value="<?php echo e($astrologer['id']); ?>">
                                <label for="regular-form-1" class="form-label">Name</label>
                                <input type="text" name="name" id="name" class="form-control"
                                    placeholder="Astrologer Name" value="<?php echo e($astrologer['name']); ?>"
                                    onkeypress="return Validate(event);" required>
                            </div>
                        </div>
                        <div class="input mt-3">
                            <div>
                                <label for="regular-form-1" class="form-label">Email</label>
                                <input type="text" name="email" id="email" class="form-control"
                                    placeholder="Astrologer Email" onkeypress="return validateJavascript(event);" value="<?php echo e($astrologer['email']); ?>" required>
                            </div>
                        </div>
                        <div class="input mt-3">
                            <div>
                                <label for="regular-form-1" class="form-label">Mobile Number</label>
                                <input type="text" name="contactNo" id="contactNo" class="form-control"
                                    placeholder="ContactNo" value="<?php echo e($astrologer['contactNo']); ?>" required>
                            </div>
                        </div>
                        <div class="intro-y col-span-12">
                            <div>
                                <label for="profile" class="form-label">Profile Image</label>
                                <img id="thumb" width="150px" src="/<?php echo e($astrologer['profileImage']); ?>"
                                    alt="Customer image" onerror="this.style.display='none';" />
                                <input type="file" class="mt-2" name="profileImage" id="profileImage"
                                    onchange="preview()" accept="image/*">
                            </div>
                        </div>
                    </div>
                    <div id="example-tab-2" class="tab-pane leading-relaxed" role="tabpanel"
                        aria-labelledby="example-2-tab">
                        <div class="intro-y grid grid-cols-12 gap-6 mt-5">
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="title" class="form-label">Select Gender</label>
                                        <select data-minimum-results-for-search="Infinity" name="gender"
                                            class="form-control select2" data-placeholder="Gender">
                                            <option Value="Female"
                                                <?php echo e($astrologer['gender'] == 'Female' ? 'selected' : ''); ?>>
                                                Female
                                            </option>
                                            <option Value="Male" <?php echo e($astrologer['gender'] == 'Male' ? 'selected' : ''); ?>>
                                                Male
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label id="input-group" class="form-label">Birth Date</label>
                                        <input type="date" class="form-control" placeholder="Unit"
                                            aria-describedby="input-group-3" name="birthDate"
                                            value="<?php echo e(date('Y-m-d', strtotime($astrologer['birthDate']))); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Astrologer Category</label>
                                    <select name="astrologerCategoryId[]" class="form-control select2 category" multiple
                                        data-placeholder="Choose Your Category">
                                        <?php $__currentLoopData = $astrologerCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categroy): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value=<?php echo e($categroy->id); ?>>
                                                <?php echo e($categroy->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Primary Skills</label>
                                    <select name="primarySkill[]" class="form-control select2 primary" multiple
                                        data-placeholder="Choose Your Primary Skills">
                                        <?php $__currentLoopData = $skills; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $skill): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value=<?php echo e($skill->id); ?>>
                                                <?php echo e($skill->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">All Skills</label>
                                    <select name="allSkill[]" class="form-control select2 all" multiple
                                        data-placeholder="Choose Your Primary Skills">
                                        <?php $__currentLoopData = $skills; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $skill): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value=<?php echo e($skill->id); ?>>
                                                <?php echo e($skill->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Language</label>
                                    <select name="languageKnown[]" class="form-control select2 language" multiple
                                        data-placeholder="Choose Language">
                                        <?php $__currentLoopData = $language; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value=<?php echo e($lang->id); ?>>
                                                <?php echo e($lang->languageName); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Add Your Charge(As per
                                            Minute)</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="charge" id="charge" class="form-control"
                                            placeholder="Charge" value="<?php echo e($astrologer['charge']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Add Your video charge(As per
                                            Minute)</label>
                                        <input type="text" onkeypress="return validateJavascript(event);" name="videoCallRate" id="videoCallRate"
                                            class="form-control" placeholder="VideoCall Rate"
                                            value="<?php echo e($astrologer['videoCallRate']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Add Your report charge(As per
                                            Minute)</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="reportRate" id="reportRate" class="form-control"
                                            placeholder="Reprot Rate" value="<?php echo e($astrologer['reportRate']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Experience In Years</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="experienceInYears" id="experienceInYears"
                                            class="form-control" placeholder="Experience In Years"
                                            value="<?php echo e($astrologer['experienceInYears']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">How many hours you can contribute
                                            daily?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="dailyContribution" id="dailyContribution"
                                            class="form-control" placeholder="Daily Contribution"
                                            value="<?php echo e($astrologer['dailyContribution']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Where did you hear about
                                            Astroguru?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="hearAboutAstroguru" id="hearAboutAstroguru"
                                            class="form-control" placeholder="Youtube,Facebook"
                                            value="<?php echo e($astrologer['hearAboutAstroguru']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="flex flex-col sm:flex-row mt-2">
                                    <label for="regular-form-1" class="form-label">Are you working on any other
                                        platform?</label>
                                    <div class="flex flex-col sm:flex-row mt-2">
                                        <div class="form-check mr-2">
                                            <input class="form-check-input" type="radio"
                                                name="isWorkingOnAnotherPlatform" value=1
                                                <?php echo e($astrologer['isWorkingOnAnotherPlatform'] ? 'checked' : ''); ?>>
                                            <label class="form-check-label" for="radio-switch-4">Yes</label>
                                        </div>
                                        <div class="form-check mr-2 mt-2 sm:mt-0">
                                            <input class="form-check-input" type="radio"
                                                name="isWorkingOnAnotherPlatform" value=0
                                                <?php echo e(!$astrologer['isWorkingOnAnotherPlatform'] ? 'checked' : ''); ?>>
                                            <label class="form-check-label" for="radio-switch-5">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="example-tab-3" class="tab-pane leading-relaxed" role="tabpanel"
                        aria-labelledby="example-3-tab">
                        <div class="intro-y grid grid-cols-12 gap-6 mt-5">
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Why do you think we should onboard
                                            you?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="whyOnBoard" id="whyOnBoard" class="form-control"
                                            placeholder="Why we should on board you?"
                                            value="<?php echo e($astrologer['whyOnBoard']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">What is suitable time for
                                            interview?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="interviewSuitableTime" id="interviewSuitableTime"
                                            class="form-control" placeholder="Enter Suitable Time For Interview"
                                            value="<?php echo e($astrologer['interviewSuitableTime']); ?>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Which city do you currently live
                                            in?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="currentCity" id="currentCity" class="form-control"
                                            placeholder="City" value="<?php echo e($astrologer['currentCity']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Main Source of business(Other than
                                        astrology)?</label>
                                    <select data-minimum-results-for-search="Infinity" id="mainSourceOfBusiness"
                                        name="mainSourceOfBusiness" class="form-control select2"
                                        data-placeholder="Main Source of business">
                                        <?php $__currentLoopData = $mainSourceBusiness; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $source): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value='<?php echo e($source->jobName); ?>'>
                                                <?php echo e($source->jobName); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Select your highest qualification</label>
                                    <select name="highestQualification" id="highestQualification"
                                        class="form-control select2" data-placeholder="Highest Qualification">
                                        <?php $__currentLoopData = $highestQualification; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $highest): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value='<?php echo e($highest->qualificationName); ?>'>
                                                <?php echo e($highest->qualificationName); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Degree / Diploma</label>
                                    <select data-minimum-results-for-search="Infinity" id="degree" name="degree"
                                        class="form-control select2" data-placeholder="Degree">
                                        <?php $__currentLoopData = $qualifications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $qua): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value='<?php echo e($qua->degreeName); ?>'>
                                                <?php echo e($qua->degreeName); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">College/School/University</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="college" id="college" class="form-control"
                                            placeholder="Enter your College/School/University"
                                            value="<?php echo e($astrologer['college']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">From where did you learn
                                            Astrology?</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="learnAstrology" id="learnAstrology"
                                            class="form-control" placeholder="From where did you learn Astrology"
                                            value="<?php echo e($astrologer['learnAstrology']); ?>">
                                    </div>
                                </div>
                            </div>

                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Instagram profile link</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="instaProfileLink" id="instaProfileLink"
                                            class="form-control" placeholder="Please let us know your Instagram profile"
                                            value="<?php echo e($astrologer['instaProfileLink']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Facebook profile link</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="instaProfileLink" id="facebookProfileLink"
                                            class="form-control" placeholder="Please let us know your Facebook profile"
                                            value="<?php echo e($astrologer['facebookProfileLink']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">LinkedIn profile link</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="linkedInProfileLink" id="linkedInProfileLink"
                                            class="form-control" placeholder="Please let us know your LinkedIn profile"
                                            value="<?php echo e($astrologer['linkedInProfileLink']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Youtube profile link</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="youtubeChannelLink" id="youtubeChannelLink"
                                            class="form-control" placeholder="Please let us know your Youtube profile"
                                            value="<?php echo e($astrologer['youtubeChannelLink']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Website profile link</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="websiteProfileLink" id="websiteProfileLink"
                                            class="form-control" placeholder="Please let us know your Website profile"
                                            value="<?php echo e($astrologer['websiteProfileLink']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="flex flex-col sm:flex-row mt-2">
                                    <label for="regular-form-1" class="form-label">Did anybody refer you to
                                        astroguru?</label>
                                    <div class="form-check mr-2">
                                        <input class="form-check-input" type="radio" name="isAnyBodyRefer" value=1
                                            <?php echo e($astrologer['isAnyBodyRefer'] ? 'checked' : ''); ?>>
                                        <label class="form-check-label" for="radio-switch-4">Yes</label>
                                    </div>
                                    <div class="form-check mr-2 mt-2 sm:mt-0">
                                        <input class="form-check-input" type="radio" name="isAnyBodyRefer" value=0
                                            <?php echo e(!$astrologer['isAnyBodyRefer'] ? 'checked' : ''); ?>>
                                        <label class="form-check-label" for="radio-switch-5">No</label>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <?php if($astrologer['isAnyBodyRefer']): ?>
                                    <div class="input mt-3">
                                        <div>
                                            <label for="regular-form-1" class="form-label">Name of the person who referred
                                                you?</label>
                                            <input onkeypress="return validateJavascript(event);" type="text" name="referedPerson" id="referedPerson"
                                                class="form-control" placeholder="Please let us know your Website profile"
                                                value="<?php echo e($astrologer['referedPerson']); ?>">
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Minimum Earning Expection from
                                            Astroguru</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="minimumEarning" id="minimumEarning"
                                            class="form-control" placeholder="Minimum Earning"
                                            value="<?php echo e($astrologer['minimumEarning']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Maximum Earning Expection from
                                            Astroguru</label>
                                        <input onkeypress="return validateJavascript(event);" type="text" name="maximumEarning" id="maximumEarning"
                                            class="form-control" placeholder="Maximum Earning"
                                            value="<?php echo e($astrologer['maximumEarning']); ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">Long bio</label>
                                        <textarea onkeypress="return validateJavascript(event);" name="loginBio" id="loginBio" class="form-control" placeholder="Describe bio"><?php echo e($astrologer['loginBio']); ?></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Number of the foreign countries you
                                        lived/travelled to?</label>
                                    <select data-minimum-results-for-search="Infinity" name="NoofforeignCountriesTravel"
                                        class="form-control select2" data-placeholder="Travel Countries">
                                        <?php $__currentLoopData = $countryTravel; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $travel): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value=<?php echo e($travel->NoOfCountriesTravell); ?>>
                                                <?php echo e($travel->NoOfCountriesTravell); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="preview mt-3">
                                    <label for="title" class="form-label">Are you currently working a fulltime
                                        job?</label>
                                    <select data-minimum-results-for-search="Infinity" id="currentlyworkingfulltimejob" name="currentlyworkingfulltimejob"
                                        class="form-control select2" data-placeholder="Currently Working">
                                        <?php $__currentLoopData = $jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $working): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value='<?php echo e($working->workName); ?>'>
                                                <?php echo e($working->workName); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">What are some good qualities of
                                            perfect
                                            astrologer?</label>
                                        <textarea onkeypress="return validateJavascript(event);" name="goodQuality" id="goodQuality" class="form-control" placeholder="Describe Here"><?php echo e($astrologer['goodQuality']); ?></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">What was the biggest challenge you
                                            faced and how did you overcome it?</label>
                                        <textarea onkeypress="return validateJavascript(event);" name="biggestChallenge" id="biggestChallenge" class="form-control" placeholder="Describe Here"><?php echo e($astrologer['biggestChallenge']); ?></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="intro-y col-span-6 md:col-span-6">
                                <div class="input mt-3">
                                    <div>
                                        <label for="regular-form-1" class="form-label">A customer is asking the same
                                            question
                                            repeatedly: what will you do?</label>
                                        <textarea onkeypress="return validateJavascript(event);" name="whatwillDo" id="whatwillDo" class="form-control" placeholder="Describe Here"><?php echo e($astrologer['whatwillDo']); ?></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="example-tab-4" class="tab-pane leading-relaxed" role="tabpanel"
                        aria-labelledby="example-4-tab">
                        <?php $__currentLoopData = $astrologer['astrologerAvailability']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $availability): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="input mt-2 sm:mt-0">
                                <h4 class="font-medium text-lg mt-3 d-inline"><?php echo e($availability['day']); ?></h4>
                                <button style="padding: 3px 6px;"class="btn btn-sm btn-primary add-field d-inline"
                                    type="button" onclick="addField('<?php echo e($availability['day']); ?>')">+</button>
                                <div class="intro-y grid grid-cols-12 gap-6" id="astrologerfield">
                                    <?php $__currentLoopData = $availability['time']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $timeIndex => $time): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div
                                            class="<?php echo e($availability['day']); ?>_fromTime<?php echo e($timeIndex); ?> intro-y col-span-6 md:col-span-6">
                                            <label id="input-group"
                                                class="astrologerAvailability_<?php echo e($availability['day']); ?>_time<?php echo e($timeIndex); ?>_fromTime form-label">FromTime
                                                <button
                                                    style="padding: 2px 7px;
                                                border-radius: 50%"
                                                    class="btn btn-sm btn-primary add-field d-inline" type="button"
                                                    onclick="removeField('<?php echo e($availability['day']); ?>',<?php echo e($timeIndex); ?>)">-</button></label>
                                            <input type="hidden" class="form-control"
                                                id="astrologerAvailability[<?php echo e($availability['day']); ?>_<?php echo e($timeIndex); ?>][day]"
                                                placeholder="FromTime"
                                                name="astrologerAvailability[<?php echo e($availability['day']); ?>_<?php echo e($timeIndex); ?>][day]"
                                                aria-describedby="input-group-4" value="<?php echo e($availability['day']); ?>">
                                            <input type="time" class="form-control" placeholder="FromTime"
                                                name="astrologerAvailability[<?php echo e($availability['day']); ?>_<?php echo e($timeIndex); ?>][time][<?php echo e($timeIndex); ?>][fromTime]"
                                                id="astrologerAvailability_<?php echo e($availability['day']); ?>_time<?php echo e($timeIndex); ?>_fromTime"
                                                aria-describedby="input-group-4" value="<?php echo e($time['fromTime']); ?>">
                                        </div>
                                        <div
                                            class="<?php echo e($availability['day']); ?>_toTime<?php echo e($loop->index); ?> intro-y col-span-6 md:col-span-6">
                                            <label id="input-group"
                                                class="astrologerAvailability_<?php echo e($availability['day']); ?>_time<?php echo e($loop->index); ?>_toTime form-label">ToTime</label>
                                            <input type="time" class="form-control" placeholder="FromTime"
                                                name="astrologerAvailability[<?php echo e($availability['day']); ?>_<?php echo e($timeIndex); ?>][time][<?php echo e($loop->index); ?>][toTime]"
                                                id="astrologerAvailability_<?php echo e($availability['day']); ?>_time<?php echo e($loop->index); ?>_toTime"
                                                aria-describedby="input-group-4" value="<?php echo e($time['toTime']); ?>">
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
        </div>

        </div>
    </form>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"  ></script>
    <script type="text/javascript"></script>
    <script>
        var spinner = $('.loader');
        $(window).on('load', function() {
            $('.loader').hide();
        });
        var category = <?php echo e(Js::from($astrologer['astrologerCategoryId'])); ?>;
        var primarySkill = <?php echo e(Js::from($astrologer['primarySkill'])); ?>;
        var allSkill = <?php echo e(Js::from($astrologer['allSkill'])); ?>;
        var language = <?php echo e(Js::from($astrologer['languageKnown'])); ?>;
        var mainSourceOfBusiness = <?php echo e(Js::from($astrologer['mainSourceOfBusiness'])); ?>;
        var degree = <?php echo e(Js::from($astrologer['degree'])); ?>;
        var highestQualification = <?php echo e(Js::from($astrologer['highestQualification'])); ?>;
        var currentlyworkingfulltimejob = <?php echo e(Js::from($astrologer['currentlyworkingfulltimejob'])); ?>;
        category = category.split(',')
        primarySkill = primarySkill.split(',')
        allSkill = allSkill.split(',')
        languageKnown = language.split(',')
        $('.category').val(category).trigger('change');
        $('.primary').val(primarySkill).trigger('change');
        $('.all').val(allSkill).trigger('change');
        $('.language').val(languageKnown).trigger('change');
        $('#mainSourceOfBusiness').val(mainSourceOfBusiness).trigger('change');
        $('#degree').val(degree).trigger('change');
        $('#highestQualification').val(highestQualification).trigger('change');
        $('#currentlyworkingfulltimejob').val(currentlyworkingfulltimejob).trigger('change');
    </script>
    <script>
        $(document).ready(function() {
            jQuery('.select2').select2({
                allowClear: true,
                tags: true,
                tokenSeparators: [',', ' ']
            });
        });
        jQuery(function() {
            jQuery('#editastrologer').submit(function(e) {
                e.preventDefault();
                spinner.show();
                var data = new FormData(this);
                jQuery.ajax({
                    type: 'POST',
                    url: "<?php echo e(route('editAstrologerApi')); ?>",
                    data: data,
                    dataType: 'JSON',
                    processData: false,
                    contentType: false,
                    success: function(data) {
                        if (jQuery.isEmptyObject(data.error)) {
                            spinner.hide();
                            location.href = "/admin/astrologers";
                        } else {
                            toastr.warning(data.error)
                            // printErrorMsg(data.error);
                            spinner.hide();
                        }
                    }
                });
            });
        });

        function printErrorMsg(msg) {
        }

        function preview() {
            document.getElementById("thumb").style.display = "block";
            thumb.src = URL.createObjectURL(event.target.files[0]);
        }
        var times = <?php echo e(Js::from($astrologer['astrologerAvailability'])); ?>;
        var dayTime = [];


        function addField($day) {
            if (times && times.length > 0) {
                dayTime = times.find(c => c.day == $day)['time'];
                dayTime.push({
                    fromTime: null,
                    toTime: null
                })
            }
            html = '';
            htmlto = '';
            html +=
                " <div class=" + $day + "_fromTime" + (dayTime.length - 1) +
                " intro-y col-span-6 md:col-span-6 mt-5'> <label id='input-group' class='mt-5 astrologerAvailability_" +
                $day +
                "_time" + (dayTime.length - 1) +
                "_fromTime form-label'>FromTime<button style='padding: 2px 7px;border-radius: 50%'class='btn btn-sm btn-primary add-field d-inline' type='button' onclick=removeField('" +
                $day + "'," + (dayTime.length - 1) +
                ")>-</button></label> <input id='astrologerAvailability[" + $day + "_" + (dayTime.length - 1) +
                "][day]' type='hidden' class='form-control' placeholder='FromTime' name='astrologerAvailability[" +
                $day + "_" + (dayTime.length - 1) + "][day]' aria-describedby='input-group-4' value=" + $day +
                "><input type = 'time' class = 'form-control' placeholder = 'FromTime' id='astrologerAvailability_" +
                $day + "_time" + (dayTime.length - 1) + "_fromTime' name = 'astrologerAvailability[" +
                $day + "_" + (dayTime.length - 1) + "][time][" + (dayTime.length - 1) +
                "][fromTime]' aria-describedby = 'input-group-4'></div>";
            htmlto +=
                ' <div class=' + $day + '_toTime' + (dayTime.length - 1) +
                ' intro-y col-span-6 md:col-span-6 mt-5"><label id="input-group" class="mt-5 form-label astrologerAvailability_' +
                $day + '_time' + (dayTime.length - 1) +
                '_toTime">ToTime</label><input type = "time" class = "form-control"  placeholder = "ToTime" name = "astrologerAvailability[' +
                $day + '_' + (dayTime.length - 1) + '][time][' + (dayTime.length - 1) +
                '][toTime]" id="astrologerAvailability_' +
                $day + '_time' + (dayTime.length - 1) + '_toTime"></div>'
            $('.' + $day + '_fromTime' + (dayTime.length - 2)).append(
                html
            );
            $('.' + $day + '_toTime' + (dayTime.length - 2)).append(
                htmlto
            );
        }

        function removeField($day, $index) {
            if (dayTime.length == 0)
                dayTime = times.filter(c => c.day == $day)[0]['time'];
            dayTime.splice($index, 1);

            $('#astrologerAvailability_' + $day + '_time' + $index + '_fromTime').remove();
            $('#astrologerAvailability_' + $day + '_time' + $index + '_toTime').remove();

            $('.astrologerAvailability_' + $day + '_time' + $index + '_fromTime').remove();
            $('.astrologerAvailability_' + $day + '_time' + $index + '_toTime').remove();
            $('#astrologerAvailability[' + $day + '_' + $index + '][day]').remove();
        }
        function Validate(event) {
            var regex = new RegExp("^[0-9-!@#$%&<>*?]");
            var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
            if (regex.test(key)) {
                event.preventDefault();
                return false;
            }
        }

        function validateJavascript(event) {
            var regex = new RegExp("^[<>]");
            var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
            if (regex.test(key)) {
                event.preventDefault();
                return false;
            }
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('../layout/' . $layout, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/vhosts/astroway.diploy.in/httpdocs/resources/views/pages/edit-astrologer.blade.php ENDPATH**/ ?>