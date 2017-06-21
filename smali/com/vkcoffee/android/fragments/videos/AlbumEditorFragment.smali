.class public Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "AlbumEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
    }
.end annotation


# static fields
.field static final PRIVACY_RESULT:I = 0x67


# instance fields
.field mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

.field mContainer:Landroid/view/ViewGroup;

.field mDoneDrawable:Landroid/graphics/drawable/Drawable;

.field mDoneEnabled:Z

.field mDoneItem:Landroid/view/MenuItem;

.field mOwnerId:I

.field mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

.field mPrivacySubtitle:Landroid/widget/TextView;

.field mPrivacyTitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    return-void
.end method

.method public static create(I)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
    .locals 2
    .param p0, "ownerId"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;)V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->setOwnerId(I)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static edit(Lcom/vkcoffee/android/api/VideoAlbum;)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
    .locals 2
    .param p0, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 83
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;)V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->attachAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->enableDone(Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 176
    return-void
.end method

.method enableDone(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    if-eq p1, v0, :cond_1

    .line 217
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 225
    :cond_1
    return-void

    .line 219
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    const/16 v1, 0x67

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 197
    const-string/jumbo v1, "setting"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 198
    .local v0, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v0, :cond_0

    .line 199
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacySubtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .end local v0    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 167
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x7f10021b
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->updateDecorator()V

    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->setHasOptionsMenu(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "oid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mOwnerId:I

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    const v0, 0x7f100019

    const v1, 0x7f08013b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 149
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 151
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    const v0, 0x7f030194

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDone()V
    .locals 5

    .prologue
    .line 228
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/vkcoffee/android/api/video/VideoAddAlbum;

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mOwnerId:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/vkcoffee/android/api/video/VideoAddAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;

    .line 231
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/video/VideoAddAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 273
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/video/VideoEditAlbum;

    iget v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mOwnerId:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;

    .line 253
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$2;-><init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/video/VideoEditAlbum;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 270
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100019

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->onDone()V

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 181
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    if-eqz v1, :cond_1

    const v1, 0x7f08013e

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->setTitle(I)V

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f1003f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mContainer:Landroid/view/ViewGroup;

    .line 122
    const v1, 0x7f1000dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    const v1, 0x7f1003f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacyTitle:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f1003f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacySubtitle:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f10021b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "mPrivacyView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "all"

    aput-object v3, v2, v5

    const-string/jumbo v3, "friends"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "friends_of_friends"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "only_me"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "some"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 136
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    const v2, 0x7f080154

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mAlbum:Lcom/vkcoffee/android/api/VideoAlbum;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    :goto_1
    iput-object v1, v2, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacySubtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->updateDecorator()V

    .line 141
    return-void

    .line 116
    .end local v0    # "mPrivacyView":Landroid/view/View;
    :cond_1
    const v1, 0x7f0802bd

    goto/16 :goto_0

    .line 137
    .restart local v0    # "mPrivacyView":Landroid/view/View;
    :cond_2
    new-array v1, v6, [Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v3, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method updateDecorator()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 207
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v8, v4

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->isTablet:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v0, v6, v7, v8, v4}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 208
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "c":Landroid/view/View;
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setBackgroundWithViewPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    :cond_0
    move v4, v5

    .line 207
    goto :goto_1

    .line 211
    :cond_1
    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v4, v6, :cond_2

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 212
    .local v3, "pad":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 213
    return-void

    .end local v3    # "pad":I
    :cond_2
    move v3, v5

    .line 211
    goto :goto_2
.end method
