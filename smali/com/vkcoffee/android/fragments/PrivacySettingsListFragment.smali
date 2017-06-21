.class public Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "PrivacySettingsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;"
    }
.end annotation


# static fields
.field public static final REQUEST_SETTINGS:I = 0x3263


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

.field private idSequence:I

.field private keysId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;"
        }
    .end annotation
.end field

.field private users:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->users:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->lists:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->idSequence:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->users:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/PrivacySetting;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->getSubtitle(Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$408(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->idSequence:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->idSequence:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method private getSubtitle(Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "s"    # Lcom/vkcoffee/android/data/PrivacySetting;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    sget-object v3, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->apiValue()Ljava/util/List;

    move-result-object v4

    iget-object v3, p1, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->apiValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 249
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    const-string/jumbo v4, "F"

    invoke-virtual {v3, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 251
    .local v2, "sp":Landroid/text/Spannable;
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v2, v3, v5, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 254
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountGetPrivacySettings;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/account/AccountGetPrivacySettings;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountGetPrivacySettings;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 161
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;-><init>(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$PrivacyAdapter;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method synthetic lambda$onCreateContentView$540(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 183
    const/16 v7, 0x3263

    if-ne p1, v7, :cond_8

    const/4 v7, -0x1

    if-ne p2, v7, :cond_8

    .line 184
    const-string/jumbo v7, "setting"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 185
    .local v5, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    if-nez v5, :cond_0

    .line 219
    .end local v5    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :goto_0
    return-void

    .line 188
    .restart local v5    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_0
    iget-object v7, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 189
    .local v4, "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    instance-of v8, v4, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    if-eqz v8, :cond_1

    move-object v2, v4

    .line 190
    check-cast v2, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    .line 191
    .local v2, "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userCount()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 192
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userIdAt(I)I

    move-result v6

    .line 193
    .local v6, "uid":I
    const v8, 0x77359400

    if-ge v6, v8, :cond_2

    .line 194
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->users:Landroid/util/SparseArray;

    invoke-static {v6}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 191
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .end local v4    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .end local v6    # "uid":I
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 200
    .local v0, "data":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    iget-object v7, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    instance-of v7, v7, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v9, v5, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v7, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    .line 201
    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->getTitle()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 202
    iget-object v7, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v7, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->getSubtitle(Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->setSummary(Ljava/lang/Object;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    .line 206
    .end local v0    # "data":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 207
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 208
    .local v3, "privacySetting":Lcom/vkcoffee/android/data/PrivacySetting;
    iget-object v7, v3, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    iget-object v8, v5, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 209
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    .end local v3    # "privacySetting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_6
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->getSubtitle(Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v5, Lcom/vkcoffee/android/data/PrivacySetting;->displayStringTmp:Ljava/lang/CharSequence;

    .line 214
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->updateList()V

    .line 215
    new-instance v7, Lcom/vkcoffee/android/api/account/AccountSetPrivacy;

    iget-object v8, v5, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSetPrivacy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/account/AccountSetPrivacy;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 206
    .restart local v3    # "privacySetting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    .end local v1    # "i":I
    .end local v3    # "privacySetting":Lcom/vkcoffee/android/data/PrivacySetting;
    .end local v5    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    const v0, 0x7f0803c9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->loadData()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->setRefreshEnabled(Z)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->keysId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 176
    .local v0, "s":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v1

    const/16 v2, 0x3263

    invoke-virtual {v1, p0, v2}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 179
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f0200a5

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    if-ne v0, v3, :cond_0

    .line 84
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->isTablet:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->updateDecorator()V

    .line 91
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0x26000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 167
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 170
    return-object v1
.end method
