.class public Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    }
.end annotation


# static fields
.field private static final PLACE_RESULT:I = 0x66


# instance fields
.field private access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

.field private addEndTimeBtn:Landroid/widget/TextView;

.field private addrField:Landroid/widget/EditText;

.field private categoryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;",
            ">;"
        }
    .end annotation
.end field

.field private categorySelector:Landroid/widget/Spinner;

.field private descrField:Landroid/widget/EditText;

.field private endDate:Landroid/widget/Button;

.field private endDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

.field private endTime:Landroid/widget/Button;

.field private endTimeWrap:Landroid/view/View;

.field private id:I

.field private info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

.field private place:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field private placeBtn:Landroid/widget/TextView;

.field private placeChanged:Z

.field private placeCityID:I

.field private placeCountryID:I

.field private removeEndTimeBtn:Landroid/view/View;

.field private startDate:Landroid/widget/Button;

.field private startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

.field private startTime:Landroid/widget/Button;

.field private subCategoryDivider:Landroid/view/View;

.field private subcategoryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;",
            ">;"
        }
    .end annotation
.end field

.field private subcategorySelector:Landroid/widget/Spinner;

.field private titleField:Landroid/widget/EditText;

.field private type:I

.field private websiteField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeChanged:Z

    .line 510
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTimeWrap:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->id:I

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/ui/DateTimeChooser;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/ui/DateTimeChooser;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateSubCategoryList()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/attachments/GeoAttachment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateInfo()V

    return-void
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeCityID:I

    return p1
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeCountryID:I

    return p1
.end method

.method private save()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "fields":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->titleField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "newTitle":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->descrField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "newDescription":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addrField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "newAddress":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->websiteField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, "newWebsite":Ljava/lang/String;
    const/4 v1, 0x0

    .line 435
    .local v1, "newAccess":I
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 446
    :goto_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    iget v3, v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 447
    .local v3, "newCategory":I
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_b

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    iget v7, v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 448
    .local v7, "newSubCategory":I
    :goto_1
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/DateTimeChooser;->getDate()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    div-long/2addr v10, v12

    long-to-int v6, v10

    .line 449
    .local v6, "newStartTime":I
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/DateTimeChooser;->getDate()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 450
    .local v5, "newEndTime":I
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 451
    const/4 v5, 0x0

    .line 453
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 454
    const-string/jumbo v10, "title"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->description:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 457
    const-string/jumbo v10, "description"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_2
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->address:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 460
    const-string/jumbo v10, "address"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_3
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->website:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 463
    const-string/jumbo v10, "website"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_4
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->access:I

    if-eq v1, v10, :cond_5

    .line 466
    const-string/jumbo v10, "access"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    :cond_5
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    if-eq v3, v10, :cond_6

    .line 469
    iget v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    const-string/jumbo v10, "public_category"

    :goto_2
    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    :cond_6
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subcategory:I

    if-eq v7, v10, :cond_7

    .line 472
    const-string/jumbo v10, "public_subcategory"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    :cond_7
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    if-eq v6, v10, :cond_8

    .line 475
    const-string/jumbo v10, "event_start_date"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    :cond_8
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v10, v10, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    if-eq v5, v10, :cond_9

    .line 478
    const-string/jumbo v10, "event_finish_date"

    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    :cond_9
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeChanged:Z

    if-eqz v10, :cond_a

    .line 481
    const-string/jumbo v10, "edit_place"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string/jumbo v10, "place_lat"

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v12, v11, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {v0, v10, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 483
    const-string/jumbo v10, "place_lon"

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v12, v11, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {v0, v10, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 484
    const-string/jumbo v10, "place_address"

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v11, v11, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v10, "place_country_id"

    iget v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeCountryID:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    const-string/jumbo v10, "place_city_id"

    iget v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeCityID:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    :cond_a
    new-instance v10, Lcom/vkcoffee/android/api/groups/GroupsEdit;

    iget v11, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->id:I

    invoke-direct {v10, v11, v0}, Lcom/vkcoffee/android/api/groups/GroupsEdit;-><init>(ILandroid/os/Bundle;)V

    new-instance v11, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;

    .line 489
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, p0, v12, v8}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/api/groups/GroupsEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v10

    .line 501
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v10

    .line 502
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 503
    return-void

    .line 437
    .end local v3    # "newCategory":I
    .end local v5    # "newEndTime":I
    .end local v6    # "newStartTime":I
    .end local v7    # "newSubCategory":I
    :pswitch_0
    const/4 v1, 0x0

    .line 438
    goto/16 :goto_0

    .line 440
    :pswitch_1
    const/4 v1, 0x1

    .line 441
    goto/16 :goto_0

    .line 443
    :pswitch_2
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 447
    .restart local v3    # "newCategory":I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 469
    .restart local v5    # "newEndTime":I
    .restart local v6    # "newStartTime":I
    .restart local v7    # "newSubCategory":I
    :cond_c
    const-string/jumbo v10, "subject"

    goto/16 :goto_2

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x7f100235
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAddress(Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;)V
    .locals 3
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/GeoAttachment;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 390
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, "progress":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 392
    const v1, 0x7f0801e6

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 394
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Ljava/lang/String;Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 426
    return-void
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 241
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->content:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 242
    .local v5, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 243
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    int-to-float v10, v6

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->isTablet:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v0, v8, v9, v10, v6}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 244
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 247
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 248
    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move v6, v7

    .line 243
    goto :goto_1

    .line 250
    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->scrW:I

    const/16 v8, 0x39c

    if-lt v6, v8, :cond_2

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    .line 251
    .local v4, "pad":I
    :goto_2
    invoke-virtual {v5, v4, v7, v4, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 252
    return-void

    .end local v4    # "pad":I
    :cond_2
    move v4, v7

    .line 250
    goto :goto_2
.end method

.method private updateInfo()V
    .locals 9

    .prologue
    const v8, 0x1090009

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->titleField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->descrField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addrField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->websiteField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->website:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-nez v1, :cond_1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v1, v1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->access:I

    packed-switch v1, :pswitch_data_0

    .line 296
    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030058

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    .line 297
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 298
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 299
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030058

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    .line 302
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 303
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    iget v1, v1, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    if-ne v1, v2, :cond_5

    .line 306
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateSubCategoryList()V

    .line 311
    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-ne v1, v6, :cond_3

    .line 312
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 313
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 314
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v1, v1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    if-le v1, v2, :cond_6

    .line 315
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTimeWrap:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v1, v1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    invoke-virtual {v2}, Lcom/vkcoffee/android/GeoPlace;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_4
    return-void

    .line 286
    .end local v0    # "i":I
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    const v2, 0x7f100235

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_0

    .line 289
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    const v2, 0x7f100236

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_0

    .line 292
    :pswitch_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    const v2, 0x7f100237

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_0

    .line 304
    .restart local v0    # "i":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTimeWrap:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSubCategoryList()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 329
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    .line 330
    .local v2, "selItem":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    iget-object v3, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 331
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 332
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subCategoryDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 334
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    iget-object v4, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    iget v3, v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subcategory:I

    if-ne v3, v4, :cond_2

    .line 338
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 339
    const/4 v0, 0x1

    .line 343
    :cond_0
    if-nez v0, :cond_1

    .line 344
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 351
    .end local v0    # "found":Z
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 336
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "found":Z
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subCategoryDivider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_1
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;

    iget v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$5;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Landroid/app/Fragment;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 275
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 355
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 356
    const-string/jumbo v0, "point"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    const-string/jumbo v1, "country"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateAddress(Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->id:I

    .line 80
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->setHasOptionsMenu(Z)V

    .line 81
    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->setTitle(I)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateConfiguration()V

    .line 237
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateDecorator()V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_1

    .line 89
    const-string/jumbo v0, "info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->dataLoaded()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->loadData()V

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300a6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 98
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->loaded:Z

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f10022d

    const v9, 0x7f10012e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 114
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f100229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->titleField:Landroid/widget/EditText;

    .line 116
    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->descrField:Landroid/widget/EditText;

    .line 117
    const v2, 0x7f10022b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addrField:Landroid/widget/EditText;

    .line 118
    const v2, 0x7f100231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->websiteField:Landroid/widget/EditText;

    .line 119
    const v2, 0x7f100234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .line 120
    const v2, 0x7f10022c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    .line 121
    const v2, 0x7f10022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    .line 122
    const v2, 0x7f10023f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f100241

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeBtn:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f10023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startTime:Landroid/widget/Button;

    .line 125
    const v2, 0x7f100239

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDate:Landroid/widget/Button;

    .line 126
    const v2, 0x7f10023d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTime:Landroid/widget/Button;

    .line 127
    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDate:Landroid/widget/Button;

    .line 128
    const v2, 0x7f10023b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTimeWrap:Landroid/view/View;

    .line 129
    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->removeEndTimeBtn:Landroid/view/View;

    .line 130
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subCategoryDivider:Landroid/view/View;

    .line 132
    new-instance v2, Lcom/vkcoffee/android/ui/DateTimeChooser;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDate:Landroid/widget/Button;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startTime:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/DateTimeChooser;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    .line 133
    new-instance v2, Lcom/vkcoffee/android/ui/DateTimeChooser;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDate:Landroid/widget/Button;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endTime:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/DateTimeChooser;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    .line 136
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-ne v2, v8, :cond_5

    .line 137
    const v2, 0x7f100232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_0
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-eq v2, v8, :cond_1

    .line 146
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 147
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-eq v2, v7, :cond_2

    .line 150
    const v2, 0x7f100238

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_2
    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-ne v3, v7, :cond_6

    const v3, 0x7f080229

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addEndTimeBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->removeEndTimeBtn:Landroid/view/View;

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->content:Landroid/view/View;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 202
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateConfiguration()V

    .line 203
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateDecorator()V

    .line 205
    if-eqz p3, :cond_4

    .line 206
    const-string/jumbo v2, "fields"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "fields":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->titleField:Landroid/widget/EditText;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->descrField:Landroid/widget/EditText;

    const-string/jumbo v3, "description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addrField:Landroid/widget/EditText;

    const-string/jumbo v3, "address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->websiteField:Landroid/widget/EditText;

    const-string/jumbo v3, "website"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-eq v2, v8, :cond_3

    .line 212
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    const-string/jumbo v3, "access"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    const-string/jumbo v3, "category"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    const-string/jumbo v3, "public_subcategory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 216
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    const-string/jumbo v3, "event_start_date"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 217
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->endDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    const-string/jumbo v3, "event_finish_date"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 220
    .end local v0    # "fields":Landroid/os/Bundle;
    :cond_4
    return-object v1

    .line 138
    :cond_5
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->type:I

    if-ne v2, v7, :cond_0

    .line 139
    const v2, 0x7f100237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v2, 0x7f100233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080204

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const v2, 0x7f100235

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080249

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const v2, 0x7f100236

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 153
    :cond_6
    const v3, 0x7f08024a

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->save()V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 362
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    if-eqz v7, :cond_0

    .line 364
    const-string/jumbo v7, "info"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->info:Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v0, "fields":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->titleField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "newTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->descrField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "newDescription":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->addrField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "newAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->websiteField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "newWebsite":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/DateTimeChooser;->getDate()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    div-long/2addr v8, v10

    long-to-int v4, v8

    .line 371
    .local v4, "newStartTime":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->startDateChooser:Lcom/vkcoffee/android/ui/DateTimeChooser;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/DateTimeChooser;->getDate()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 372
    .local v3, "newEndTime":I
    const/4 v3, 0x0

    .line 373
    const-string/jumbo v7, "title"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v7, "description"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v7, "address"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v7, "website"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v7, "access"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access:Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string/jumbo v7, "category"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->categorySelector:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string/jumbo v7, "public_subcategory"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->subcategorySelector:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string/jumbo v7, "event_start_date"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string/jumbo v7, "event_finish_date"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string/jumbo v7, "fields"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    const-string/jumbo v7, "place"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->place:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    const-string/jumbo v7, "place_changed"

    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->placeChanged:Z

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    .end local v0    # "fields":Landroid/os/Bundle;
    .end local v1    # "newAddress":Ljava/lang/String;
    .end local v2    # "newDescription":Ljava/lang/String;
    .end local v3    # "newEndTime":I
    .end local v4    # "newStartTime":I
    .end local v5    # "newTitle":Ljava/lang/String;
    .end local v6    # "newWebsite":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 231
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 260
    :cond_0
    return-void
.end method
