.class public Lcom/vkcoffee/android/fragments/ProfileEditFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "ProfileEditFragment.java"


# static fields
.field private static final AVA_RESULT:I = 0xf3d

.field private static final RELATIONS_SAME_GENDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATIONS_WITH_PARTNER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATION_PARTNER_RESULT:I = 0x65


# instance fields
.field private bdateVisSpinner:Landroid/widget/Spinner;

.field private bday:I

.field private bmonth:I

.field private byear:I

.field private cityID:I

.field private citySelector:Landroid/widget/TextView;

.field private countryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkcoffee/android/data/database/Country;",
            ">;"
        }
    .end annotation
.end field

.field private countrySpinner:Landroid/widget/Spinner;

.field private currentInfo:Landroid/os/Bundle;

.field private form:Landroid/view/View;

.field private gender:I

.field private ignoreCountryChange:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private relationAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private relationPartner:Lcom/vkcoffee/android/UserProfile;

.field private relationSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 77
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->RELATIONS_SAME_GENDER:Ljava/util/List;

    .line 78
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->ignoreCountryChange:Z

    .line 92
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setUserPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->ignoreCountryChange:Z

    return v0
.end method

.method static synthetic access$10()Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setRelationPartner(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->gender:I

    return v0
.end method

.method static synthetic access$14()Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->RELATIONS_SAME_GENDER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cancelNameRequest()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cityID:I

    return v0
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->deletePhoto()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->ignoreCountryChange:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    return-void
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    return-void
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    return-void
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    return v0
.end method

.method static synthetic access$24(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    return v0
.end method

.method static synthetic access$25(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bdateVisSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Lcom/vkcoffee/android/UserProfile;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationPartner:Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cityID:I

    return-void
.end method

.method static synthetic access$30(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->showNameInfoDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->citySelector:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->selectCity()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->selectBirthDate()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->gender:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->updateRelationOptions()V

    return-void
.end method

.method private cancelNameRequest()V
    .locals 3

    .prologue
    .line 447
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v2, "name_req_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$14;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 452
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 453
    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 633
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$19;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 642
    return-void
.end method

.method private save()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 502
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v4, "newInfo":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v10, 0x7f100372

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "firstName":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v10, 0x7f100373

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "lastName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0804fa

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 602
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "first_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "last_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 512
    :cond_2
    const-string v9, "first_name"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v9, "last_name"

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_3
    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->gender:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v11, "gender"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 516
    const-string v9, "gender"

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->gender:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    :cond_4
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 519
    .local v8, "relation":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "relation"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 520
    const-string v9, "relation"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    :cond_5
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "relation_partner"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    .line 523
    .local v6, "relPartner":Lcom/vkcoffee/android/UserProfile;
    if-eqz v6, :cond_c

    .line 524
    iget v5, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 528
    .local v5, "newRelPartnerId":I
    :goto_1
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationPartner:Lcom/vkcoffee/android/UserProfile;

    if-eqz v9, :cond_d

    .line 529
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationPartner:Lcom/vkcoffee/android/UserProfile;

    iget v7, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 533
    .local v7, "relPartnerId":I
    :goto_2
    if-eq v7, v5, :cond_6

    .line 534
    const-string v9, "relation_partner"

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationPartner:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 536
    :cond_6
    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bday"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bmonth"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v11, "byear"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_8

    .line 537
    :cond_7
    const-string v9, "bday"

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string v9, "bmonth"

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v9, "byear"

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    :cond_8
    const/4 v0, -0x1

    .line 542
    .local v0, "bdateVis":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 553
    :goto_3
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "bdate_vis"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v0, v9, :cond_9

    .line 554
    const-string v9, "bdate_vis"

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    :cond_9
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/data/database/Country;

    iget v1, v9, Lcom/vkcoffee/android/data/database/Country;->id:I

    .line 557
    .local v1, "country":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v10, "country_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v9, :cond_a

    .line 558
    const-string v9, "country_id"

    invoke-virtual {v4, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    :cond_a
    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cityID:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentInfo:Landroid/os/Bundle;

    const-string v11, "city_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_b

    .line 561
    const-string v9, "city_id"

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cityID:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    :cond_b
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v9

    if-nez v9, :cond_e

    .line 564
    const-string v9, "vk"

    const-string v10, "Nothing to save."

    invoke-static {v9, v10}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 526
    .end local v0    # "bdateVis":I
    .end local v1    # "country":I
    .end local v5    # "newRelPartnerId":I
    .end local v7    # "relPartnerId":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "newRelPartnerId":I
    goto/16 :goto_1

    .line 531
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "relPartnerId":I
    goto/16 :goto_2

    .line 544
    .restart local v0    # "bdateVis":I
    :pswitch_0
    const/4 v0, 0x1

    .line 545
    goto :goto_3

    .line 547
    :pswitch_1
    const/4 v0, 0x2

    .line 548
    goto :goto_3

    .line 550
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_3

    .line 568
    .restart local v1    # "country":I
    :cond_e
    new-instance v9, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;

    invoke-direct {v9, v4}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;-><init>(Landroid/os/Bundle;)V

    new-instance v10, Lcom/vkcoffee/android/fragments/ProfileEditFragment$17;

    invoke-direct {v10, p0, p0, v4}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$17;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/app/Fragment;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v9

    .line 601
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private selectBirthDate()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 479
    const/4 v5, 0x1

    .line 480
    .local v5, "i":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 481
    .local v1, "activity":Landroid/content/Context;
    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    .line 493
    .local v2, "anonymousClass16":Landroid/app/DatePickerDialog$OnDateSetListener;
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    const/16 v6, 0x76c

    if-le v0, v6, :cond_2

    iget v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->byear:I

    .line 494
    .local v3, "i2":I
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bmonth:I

    add-int/lit8 v4, v0, -0x1

    .line 495
    .local v4, "i3":I
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    if-lez v0, :cond_1

    .line 496
    iget v5, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bday:I

    .line 498
    :cond_1
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 499
    return-void

    .line 493
    .end local v3    # "i2":I
    .end local v4    # "i3":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, -0xe

    goto :goto_0
.end method

.method private selectCity()V
    .locals 4

    .prologue
    .line 272
    new-instance v1, Lcom/vkcoffee/android/fragments/CitySelectFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/CitySelectFragment;-><init>()V

    .line 273
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/CitySelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hint"

    const v3, 0x7f080143

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "country"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/database/Country;

    iget v2, v2, Lcom/vkcoffee/android/data/database/Country;->id:I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v3, "show_none"

    iget v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->cityID:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 278
    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->setCallback(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;)V

    .line 288
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    return-void

    .line 276
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRelationPartner(Lcom/vkcoffee/android/UserProfile;)V
    .locals 5
    .param p1, "p"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const v4, 0x7f10037f

    const v1, 0x7f10037e

    const v3, 0x7f10037d

    const v2, 0x7f0202c5

    .line 456
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationPartner:Lcom/vkcoffee/android/UserProfile;

    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-static {v0}, Lcom/vkcoffee/android/api/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUserPhoto(Ljava/lang/String;)V
    .locals 5
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f100371

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v1, 0x7f100146

    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v1, 0x7f10021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNameInfoDialog(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 605
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;

    invoke-direct {v1, p0, p2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 613
    return-void
.end method

.method private updateDecorator()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 241
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v10, 0x7f10036f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 242
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 258
    iget v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 259
    const/16 v9, 0x10

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->scrW:I

    add-int/lit16 v10, v10, -0x348

    add-int/lit8 v10, v10, -0x54

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 263
    .local v5, "pad":I
    :goto_1
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    invoke-virtual {v9, v5, v12, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    return-void

    .line 244
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 245
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 246
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 247
    const/4 v8, 0x0

    .line 251
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 252
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 255
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 256
    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 261
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method

.method private updateRelationOptions()V
    .locals 4

    .prologue
    .line 323
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 324
    .local v0, "selected":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->gender:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v1, 0x7f0d0008

    :goto_0
    const v3, 0x7f030058

    invoke-static {v2, v1, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationAdapter:Landroid/widget/ArrayAdapter;

    .line 325
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 326
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 327
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 328
    return-void

    .line 324
    :cond_0
    const v1, 0x7f0d0009

    goto :goto_0
.end method


# virtual methods
.method protected doLoadData()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountGetProfileInfo;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/account/AccountGetProfileInfo;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountGetProfileInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 444
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0xf3d

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v10, 0x0

    .line 303
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 304
    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setRelationPartner(Lcom/vkcoffee/android/UserProfile;)V

    .line 306
    :cond_0
    if-ne p1, v11, :cond_1

    if-ne p2, v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    const-string v5, "cropLeft"

    invoke-virtual {p3, v5, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    const-string v6, "cropTop"

    invoke-virtual {p3, v6, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    const-string v7, "cropRight"

    invoke-virtual {p3, v7, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    const-string v8, "cropBottom"

    invoke-virtual {p3, v8, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZFFFF)V

    invoke-static {v9, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 309
    :cond_1
    if-ne p1, v11, :cond_2

    if-ne p2, v4, :cond_2

    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 310
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileEditFragment$12;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$12;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setTitle(I)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setHasOptionsMenu(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->loadData()V

    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->updateConfiguration()V

    .line 236
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->updateDecorator()V

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f030058

    const v6, 0x1090009

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    const v2, 0x7f03014c

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    .line 126
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100379

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bdateVisSpinner:Landroid/widget/Spinner;

    .line 127
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-static {v2, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 128
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f10037a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    .line 131
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100380

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    .line 132
    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileEditFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v7}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$2;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    .line 141
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 142
    invoke-static {v5, v5, v4}, Lcom/vkcoffee/android/data/database/Country;->getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$3;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100381

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->citySelector:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->citySelector:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$4;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100378

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$5;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$5;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100375

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$6;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 183
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->relationSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$7;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f10037f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$8;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$8;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f10037c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const v3, 0x7f100384

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileEditFragment$10;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$10;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setUserPhoto(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 228
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->updateConfiguration()V

    .line 229
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->updateDecorator()V

    .line 230
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->form:Landroid/view/View;

    return-object v2

    .line 142
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/database/Country;

    .line 143
    .local v1, "c":Lcom/vkcoffee/android/data/database/Country;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 292
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 293
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 294
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 295
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroy()V

    .line 110
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->save()V

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onResume()V

    .line 320
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method public showUpdatePhotoDlg(Z)V
    .locals 5
    .param p1, "havePhotos"    # Z

    .prologue
    const/4 v4, 0x1

    .line 619
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string v2, "limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 624
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 627
    :cond_0
    const-string v2, "no_thumbs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v2, "force_thumb"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const/16 v2, 0xf3d

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void
.end method
