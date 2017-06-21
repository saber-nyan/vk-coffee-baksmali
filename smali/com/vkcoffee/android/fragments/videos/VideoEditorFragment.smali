.class public Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "VideoEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final PRIVACY_COMMENT_RESULT:I = 0x68

.field static final PRIVACY_RESULT:I = 0x67


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field mDoneDrawable:Landroid/graphics/drawable/Drawable;

.field mDoneEnabled:Z

.field mDoneItem:Landroid/view/MenuItem;

.field mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

.field mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

.field mPrivacyCommentValue:Landroid/widget/TextView;

.field mPrivacyValue:Landroid/widget/TextView;

.field mSubtitle:Landroid/widget/EditText;

.field mTitle:Landroid/widget/EditText;

.field mVideo:Lcom/vkcoffee/android/api/VideoFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 64
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    return-void
.end method

.method public static edit(Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/navigation/Navigator;
    .locals 5
    .param p0, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v4, 0x11

    .line 56
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const/16 v4, 0x10

    .line 57
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const/high16 v4, 0x44340000    # 720.0f

    .line 58
    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    .line 59
    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const v4, 0x106000b

    .line 60
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->enableDone(Z)V

    .line 184
    return-void

    .line 183
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
    .line 174
    return-void
.end method

.method enableDone(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    if-eq p1, v0, :cond_1

    .line 228
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 236
    :cond_1
    return-void

    .line 230
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
    .line 194
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const-string/jumbo v1, "setting"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 198
    .local v0, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v0, :cond_0

    .line 199
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    .end local v0    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :pswitch_1
    const-string/jumbo v1, "setting"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 206
    .restart local v0    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    if-eqz v0, :cond_0

    .line 207
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    .line 208
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyCommentValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 161
    :sswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 165
    :sswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->setSetting(Lcom/vkcoffee/android/data/PrivacySetting;)Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x7f10021b -> :sswitch_0
        0x7f1003f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->updateDecorator()V

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 141
    const v0, 0x7f100019

    const v1, 0x7f08013b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 143
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 145
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 147
    return-void

    .line 145
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
    .line 87
    const v0, 0x7f030196

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDone()V
    .locals 6

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mSubtitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoEdit;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v5}, Lcom/vkcoffee/android/data/PrivacySetting;->getApiValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/video/VideoEdit;-><init>(Lcom/vkcoffee/android/api/VideoFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment$1;

    .line 243
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 258
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100019

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->onDone()V

    .line 154
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
    .line 179
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v2, 0x7f080153

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->setTitle(I)V

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    const v3, 0x7f020234

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f1003f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mContainer:Landroid/view/ViewGroup;

    .line 99
    const v2, 0x7f1000dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    .line 100
    const v2, 0x7f100169

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mSubtitle:Landroid/widget/EditText;

    .line 101
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    const v2, 0x7f1003f3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyValue:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f1003f8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyCommentValue:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f10021b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "privacy":Landroid/view/View;
    const v2, 0x7f1003f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "privacyComment":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 115
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mSubtitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mSubtitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mSubtitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 118
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    if-gez v2, :cond_0

    .line 119
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "all"

    aput-object v4, v3, v5

    const-string/jumbo v4, "friends"

    aput-object v4, v3, v6

    const-string/jumbo v4, "friends_of_friends"

    aput-object v4, v3, v7

    const-string/jumbo v4, "only_me"

    aput-object v4, v3, v8

    const-string/jumbo v4, "some"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 125
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    const v3, 0x7f080154

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    :goto_0
    iput-object v2, v3, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 127
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacy:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "all"

    aput-object v4, v3, v5

    const-string/jumbo v4, "friends"

    aput-object v4, v3, v6

    const-string/jumbo v4, "friends_of_friends"

    aput-object v4, v3, v7

    const-string/jumbo v4, "only_me"

    aput-object v4, v3, v8

    const-string/jumbo v4, "some"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 130
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    const v3, 0x7f080155

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mVideo:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    :goto_1
    iput-object v2, v3, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 132
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyCommentValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mPrivacyComment:Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->updateDecorator()V

    .line 135
    return-void

    .line 126
    :cond_1
    new-array v2, v6, [Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v4, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_2
    new-array v2, v6, [Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    sget-object v4, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method updateDecorator()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 217
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 218
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v8, v4

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->isTablet:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v0, v6, v7, v8, v4}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 219
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, "c":Landroid/view/View;
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setBackgroundWithViewPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    :cond_0
    move v4, v5

    .line 218
    goto :goto_1

    .line 222
    :cond_1
    iget v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v4, v6, :cond_2

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 223
    .local v3, "pad":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoEditorFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 224
    return-void

    .end local v3    # "pad":I
    :cond_2
    move v3, v5

    .line 222
    goto :goto_2
.end method
