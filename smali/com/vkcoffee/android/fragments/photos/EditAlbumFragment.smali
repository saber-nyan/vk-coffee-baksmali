.class public Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "EditAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;
    }
.end annotation


# static fields
.field private static final PRIVACY_COMMENT_RESULT:I = 0x2068

.field private static final PRIVACY_VIEW_RESULT:I = 0x2067


# instance fields
.field private album:Lcom/vkcoffee/android/api/PhotoAlbum;

.field private description:Landroid/widget/EditText;

.field private groupPrivacyBtn:Landroid/view/View;

.field private groupPrivacyCheck:Landroid/widget/CheckBox;

.field private groupPrivacyCommentBtn:Landroid/view/View;

.field private groupPrivacyCommentCheck:Landroid/widget/CheckBox;

.field private oid:I

.field private privacyBtn:Landroid/view/View;

.field private privacyCommentBtn:Landroid/view/View;

.field private privacyCommentsSpinner:Landroid/widget/TextView;

.field private privacySpinner:Landroid/widget/TextView;

.field private title:Landroid/widget/EditText;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private save()V
    .locals 8

    .prologue
    .line 191
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-nez v2, :cond_1

    .line 193
    iget v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    if-lez v2, :cond_0

    .line 194
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    .local v0, "r":Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;
    :goto_0
    new-instance v2, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$1;-><init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 228
    .end local v0    # "r":Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;
    :goto_1
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    .restart local v0    # "r":Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;
    goto :goto_0

    .line 209
    .end local v0    # "r":Lcom/vkcoffee/android/api/photos/PhotosCreateAlbum;
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    if-lez v2, :cond_2

    .line 210
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v5}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v6}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    .local v1, "r2":Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;
    :goto_2
    new-instance v2, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$2;-><init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 212
    .end local v1    # "r2":Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;ZZI)V

    .restart local v1    # "r2":Lcom/vkcoffee/android/api/photos/PhotosEditAlbum;
    goto :goto_2
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 89
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 90
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 106
    iget v9, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 107
    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 111
    .local v5, "pad":I
    :goto_1
    invoke-virtual {v7, v5, v11, v5, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 112
    return-void

    .line 92
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 93
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 94
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 95
    const/4 v8, 0x0

    .line 99
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 100
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 109
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method


# virtual methods
.method lambda$onCreateContentView$510(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    new-instance v1, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v0

    const/16 v1, 0x2067

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 176
    return-void
.end method

.method lambda$onCreateContentView$511(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    new-instance v1, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v0

    const/16 v1, 0x2068

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 180
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 231
    const/16 v2, 0x2067

    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    .line 232
    const-string v2, "setting"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 233
    .local v1, "viewPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v1, :cond_0

    .line 234
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacySpinner:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    .end local v1    # "viewPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_0
    const/16 v2, 0x2068

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_1

    .line 239
    const-string v2, "setting"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 240
    .local v0, "commentPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v0, :cond_1

    .line 241
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentsSpinner:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    .end local v0    # "commentPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v0, :cond_1

    const v0, 0x7f08013e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->setTitle(I)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->setHasOptionsMenu(Z)V

    .line 64
    return-void

    .line 62
    :cond_1
    const v0, 0x7f080104

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->updateConfiguration()V

    .line 84
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->updateDecorator()V

    .line 85
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    const v3, 0x7f030109

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    .line 124
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1000dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    .line 125
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f10012e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    .line 126
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacySpinner:Landroid/widget/TextView;

    .line 127
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentsSpinner:Landroid/widget/TextView;

    .line 128
    new-instance v2, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>()V

    .line 129
    .local v2, "viewPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "all"

    aput-object v4, v3, v6

    const-string v4, "friends"

    aput-object v4, v3, v7

    const-string v4, "friends_of_friends"

    aput-object v4, v3, v9

    const-string v4, "only_me"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "some"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 130
    const v3, 0x7f080106

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v1, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    .line 136
    .local v1, "list":Ljava/util/List;
    :goto_0
    iput-object v1, v2, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>()V

    .line 138
    .local v0, "commentPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "all"

    aput-object v4, v3, v6

    const-string v4, "friends"

    aput-object v4, v3, v7

    const-string v4, "friends_of_friends"

    aput-object v4, v3, v9

    const-string v4, "only_me"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "some"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 139
    const v3, 0x7f080107

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v1, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    .line 145
    :goto_1
    iput-object v1, v0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 146
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    .line 147
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    .line 148
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyBtn:Landroid/view/View;

    .line 153
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentBtn:Landroid/view/View;

    .line 154
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCheck:Landroid/widget/CheckBox;

    .line 155
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    const v4, 0x7f1002cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentCheck:Landroid/widget/CheckBox;

    .line 156
    iget v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->oid:I

    if-gez v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyBtn:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentBtn:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->title:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->description:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacySpinner:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->privacyCommentsSpinner:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->uploadByAdminsOnly:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/PhotoAlbum;->commentsDisabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->view:Landroid/view/View;

    return-object v3

    .line 134
    .end local v0    # "commentPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    new-array v3, v7, [Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v4, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "list":Ljava/util/List;
    goto/16 :goto_0

    .line 143
    .restart local v0    # "commentPrivacy":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_2
    new-array v3, v7, [Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v4, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_1

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyBtn:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->groupPrivacyCommentBtn:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 67
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 68
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 69
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->content:Landroid/view/View;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 185
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->updateConfiguration()V

    .line 186
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->updateDecorator()V

    .line 187
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->save()V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    return-void
.end method
