.class public Lcom/vkcoffee/android/fragments/PrivacyEditFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "PrivacyEditFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;,
        Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;,
        Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;,
        Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;,
        Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceRadioButtonHolder$OnRadioButtonClickListener",
        "<",
        "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALLOW_SELECT_RESULT:I = 0x65

.field private static final DENY_SELECT_RESULT:I = 0x66

.field private static final LIST_IMAGES:[I


# instance fields
.field private adapter:Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

.field private allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

.field private changed:Z

.field private checkedOption:I

.field private denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

.field private hasSome:Z

.field private optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

.field private setting:Lcom/vkcoffee/android/data/PrivacySetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->LIST_IMAGES:[I

    return-void

    :array_0
    .array-data 4
        0x7f020166
        0x7f020167
        0x7f020165
        0x7f020163
        0x7f020164
        0x7f020168
        0x7f020169
        0x7f02016a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 78
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->hasSome:Z

    .line 79
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    .line 106
    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    return v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->LIST_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setToAllIfAllowedIsEmpty()V

    return-void
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->isTablet:Z

    return v0
.end method

.method static synthetic lambda$showListOfCategories$538([ZLandroid/content/DialogInterface;IZ)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .prologue
    .line 662
    aput-boolean p3, p0, p2

    .line 663
    return-void
.end method

.method private setResult()V
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "setting"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getResult()Lcom/vkcoffee/android/data/PrivacySetting;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 406
    return-void
.end method

.method private setToAllIfAllowedIsEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 329
    iput v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 330
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->updateList()V

    .line 332
    :cond_0
    return-void
.end method

.method private showListOfCategories(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)V
    .locals 15
    .param p1, "userListAdapter"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 629
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 688
    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v8, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v3, "itemsProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v6, "_states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v12, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    invoke-static {v12}, Lcom/vkcoffee/android/data/Friends;->getLists(Ljava/util/List;)V

    .line 641
    invoke-static {v8}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 642
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/data/Friends$Folder;

    .line 643
    .local v11, "l":Lcom/vkcoffee/android/data/Friends$Folder;
    new-instance v13, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v13}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 644
    .local v13, "p":Lcom/vkcoffee/android/UserProfile;
    const v4, 0x77359400

    iget v14, v11, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    add-int/2addr v4, v14

    iput v4, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 645
    iget-object v4, v11, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    iput-object v4, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 646
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v4, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-static/range {p1 .. p1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 652
    .end local v11    # "l":Lcom/vkcoffee/android/data/Friends$Folder;
    .end local v13    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Z

    .line 653
    .local v1, "states":[Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Z

    .line 654
    .local v2, "oldStates":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 655
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v1, v9

    .line 656
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v2, v9

    .line 654
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 659
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080357

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 660
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$5;->lambdaFactory$([Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v14

    invoke-virtual {v4, v0, v1, v14}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f08031e

    const/4 v14, 0x0

    .line 663
    invoke-virtual {v0, v4, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0800b7

    const/4 v14, 0x0

    invoke-virtual {v0, v4, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    .line 665
    .local v5, "dlg":Landroid/app/AlertDialog;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;[Z[ZLjava/util/ArrayList;Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private static usersToIds(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-array v1, v2, [I

    .line 129
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    aput v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "i":I
    .end local v1    # "ids":[I
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    .line 132
    .restart local v0    # "i":I
    .restart local v1    # "ids":[I
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected beforeSetAdapter()V
    .locals 15

    .prologue
    .line 157
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v7, "t":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00f5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 159
    .local v5, "pad":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v5, v10, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    const/high16 v10, 0x42900000    # 72.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 161
    const v10, -0x878686

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    const/4 v10, 0x1

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    if-nez v10, :cond_11

    .line 167
    new-instance v10, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/fragments/PrivacyEditFragment$1;)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    .line 168
    new-instance v10, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v11

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/functions/VoidF0;Lcom/vkcoffee/android/functions/VoidF0;Z)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    .line 172
    new-instance v10, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v11

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/functions/VoidF0;Lcom/vkcoffee/android/functions/VoidF0;Z)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    .line 176
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 177
    .local v9, "v":Ljava/lang/String;
    if-nez v9, :cond_0

    const-string/jumbo v9, ""

    .end local v9    # "v":Ljava/lang/String;
    :cond_0
    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 180
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 182
    :cond_2
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :sswitch_0
    const-string/jumbo v12, "all"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "friends"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v12, "friends_of_friends"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v12, "friends_of_friends_only"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v12, "nobody"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v12, "only_me"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v12, "some"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x6

    goto :goto_1

    .line 185
    :pswitch_1
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 188
    :cond_3
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :pswitch_2
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 192
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 194
    :cond_4
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 197
    :pswitch_3
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 198
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 200
    :cond_5
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    :pswitch_4
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 204
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 205
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 207
    :cond_6
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :pswitch_5
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 211
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 212
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 214
    :cond_7
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v12, Lcom/vkcoffee/android/data/PrivacySetting;->ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 217
    :pswitch_6
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v12, Lcom/vkcoffee/android/data/PrivacySetting$Include;

    invoke-direct {v12}, Lcom/vkcoffee/android/data/PrivacySetting$Include;-><init>()V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->hasSome:Z

    goto/16 :goto_0

    .line 222
    :cond_8
    iget v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 223
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 224
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 228
    :goto_2
    new-instance v10, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    const/4 v11, 0x5

    new-array v11, v11, [Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    const/4 v12, 0x0

    new-instance v13, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/fragments/PrivacyEditFragment$1;)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;

    invoke-direct {v13, p0, v7}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Landroid/view/View;)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    aput-object v13, v11, v12

    invoke-direct {v10, v11}, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;-><init>([Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    .line 230
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->hasSome:Z

    if-nez v10, :cond_9

    .line 231
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 233
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    invoke-static {v2}, Lcom/vkcoffee/android/data/Friends;->getLists(Ljava/util/List;)V

    .line 235
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v10, v10, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 236
    .local v6, "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    instance-of v11, v6, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    if-eqz v11, :cond_a

    move-object v3, v6

    .line 237
    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    .line 238
    .local v3, "lr":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userCount()I

    move-result v11

    if-ge v1, v11, :cond_a

    .line 239
    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userIdAt(I)I

    move-result v8

    .line 240
    .local v8, "uid":I
    const/4 v4, 0x0

    .line 241
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    const v11, 0x77359400

    if-ge v8, v11, :cond_e

    .line 242
    invoke-static {v8}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v4

    .line 253
    :cond_b
    :goto_4
    if-nez v4, :cond_c

    .line 254
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    invoke-direct {v4}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 256
    .restart local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_c
    instance-of v11, v6, Lcom/vkcoffee/android/data/PrivacySetting$Include;

    if-eqz v11, :cond_10

    .line 257
    iget-object v11, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 226
    .end local v1    # "i":I
    .end local v2    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    .end local v3    # "lr":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v6    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .end local v8    # "uid":I
    :cond_d
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    goto/16 :goto_2

    .line 244
    .restart local v1    # "i":I
    .restart local v2    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    .restart local v3    # "lr":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .restart local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v6    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .restart local v8    # "uid":I
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Friends$Folder;

    .line 245
    .local v0, "f":Lcom/vkcoffee/android/data/Friends$Folder;
    iget v12, v0, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    const v13, 0x77359400

    sub-int v13, v8, v13

    if-ne v12, v13, :cond_f

    .line 246
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    invoke-direct {v4}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 247
    .restart local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    iput v8, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 248
    iget-object v11, v0, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    iput-object v11, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_4

    .line 259
    .end local v0    # "f":Lcom/vkcoffee/android/data/Friends$Folder;
    :cond_10
    iget-object v11, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v11}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 265
    .end local v1    # "i":I
    .end local v2    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    .end local v3    # "lr":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v6    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .end local v8    # "uid":I
    :cond_11
    return-void

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x73c81be9 -> :sswitch_2
        -0x4e4cdcf5 -> :sswitch_5
        -0x443b152c -> :sswitch_3
        -0x3e00811d -> :sswitch_4
        -0x23c4b66b -> :sswitch_1
        0x179a1 -> :sswitch_0
        0x35f4f4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 116
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->beforeSetAdapter()V

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->loadData()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/data/PrivacySetting;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 349
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    if-eqz v5, :cond_6

    .line 350
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 351
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    iget v6, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .local v3, "val":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 383
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    const-string/jumbo v5, "nobody"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "only_me"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 384
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;-><init>()V

    .line 385
    .local v0, "excl":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 386
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    iget v6, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;->add(I)V

    goto :goto_2

    .line 352
    .end local v0    # "excl":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :sswitch_0
    const-string/jumbo v6, "all"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "friends"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "friends_of_friends"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "friends_of_friends_only"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "nobody"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "only_me"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v6, "some"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_0

    .line 354
    :pswitch_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 357
    :pswitch_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 360
    :pswitch_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 363
    :pswitch_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 366
    :pswitch_4
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 369
    :pswitch_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    sget-object v6, Lcom/vkcoffee/android/data/PrivacySetting;->ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 372
    :pswitch_6
    new-instance v1, Lcom/vkcoffee/android/data/PrivacySetting$Include;

    invoke-direct {v1}, Lcom/vkcoffee/android/data/PrivacySetting$Include;-><init>()V

    .line 373
    .local v1, "incl":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 374
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v6, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/data/PrivacySetting$Include;->add(I)V

    goto :goto_3

    .line 376
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/PrivacySetting$Include;->userCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 395
    .end local v1    # "incl":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    .end local v3    # "val":Ljava/lang/String;
    :cond_2
    :goto_4
    return-object v4

    .line 379
    .restart local v1    # "incl":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    .restart local v3    # "val":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 388
    .end local v1    # "incl":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    .restart local v0    # "excl":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v0    # "excl":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v5, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    goto :goto_4

    .line 395
    .end local v3    # "val":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    goto :goto_4

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        -0x73c81be9 -> :sswitch_2
        -0x4e4cdcf5 -> :sswitch_5
        -0x443b152c -> :sswitch_3
        -0x3e00811d -> :sswitch_4
        -0x23c4b66b -> :sswitch_1
        0x179a1 -> :sswitch_0
        0x35f4f4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method synthetic lambda$beforeSetAdapter$533()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->usersToIds(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setPresetUsers([I)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const v1, 0x7f0803ba

    .line 169
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setMultiSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 168
    return-void
.end method

.method synthetic lambda$beforeSetAdapter$534()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->showListOfCategories(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)V

    return-void
.end method

.method synthetic lambda$beforeSetAdapter$535()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->usersToIds(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setPresetUsers([I)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const v1, 0x7f0803bb

    .line 173
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setMultiSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 172
    return-void
.end method

.method synthetic lambda$beforeSetAdapter$536()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->showListOfCategories(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)V

    return-void
.end method

.method synthetic lambda$showListOfCategories$539([Z[ZLjava/util/ArrayList;Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 5
    .param p6, "view"    # Landroid/view/View;

    .prologue
    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v2, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 668
    aget-boolean v3, p1, v1

    aget-boolean v4, p2, v1

    if-eq v3, v4, :cond_0

    .line 669
    aget-boolean v3, p2, v1

    if-eqz v3, :cond_1

    .line 670
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 671
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 681
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    .line 682
    invoke-static {p4}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 683
    invoke-static {p4}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 684
    invoke-virtual {p4}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->notifyDataSetChanged()V

    .line 686
    :cond_4
    invoke-static {p5}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 687
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x1

    .line 289
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 290
    const-string/jumbo v3, "result"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 291
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    if-ne p1, v6, :cond_6

    .line 292
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 293
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 294
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .end local v1    # "p":Landroid/os/Parcelable;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 299
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 303
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    .line 318
    .end local v0    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->updateList()V

    .line 320
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_4
    if-ne p1, v6, :cond_5

    .line 321
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setToAllIfAllowedIsEmpty()V

    .line 323
    :cond_5
    return-void

    .line 304
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_6
    const/16 v3, 0x66

    if-ne p1, v3, :cond_3

    .line 305
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 306
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 307
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .end local v1    # "p":Landroid/os/Parcelable;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 309
    :cond_7
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 310
    .restart local v0    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 312
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 316
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_9
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setRefreshEnabled(Z)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->loaded:Z

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->showContent()V

    .line 125
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 149
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setResult()V

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setResult()V

    .line 401
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroy()V

    .line 402
    return-void
.end method

.method public onRadioButtonClick(Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;)V
    .locals 3
    .param p1, "privacyRule"    # Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->optionsAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;->access$100(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$OptionsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    .line 278
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v1, v1, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    iget v2, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "opt":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const-string/jumbo v2, "some"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 280
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$200(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->updateList()V

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->changed:Z

    .line 285
    return-void
.end method

.method public bridge synthetic onRadioButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->onRadioButtonClick(Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;)V

    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onToolbarNavigationClick()V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setResult()V

    .line 141
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onToolbarNavigationClick()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 6

    .prologue
    .line 336
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->setting:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v3, v3, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    iget v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->checkedOption:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, "opt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 338
    .local v0, "hasLists":Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->allowAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$400(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 339
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    iget v4, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v5, 0x77359400

    if-le v4, v5, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 344
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->denyAdapter:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;

    const-string/jumbo v3, "only_me"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "nobody"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "some"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    invoke-static {v4, v3}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;->access$202(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$UserListAdapter;Z)Z

    .line 345
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateList()V

    .line 346
    return-void

    .line 344
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
