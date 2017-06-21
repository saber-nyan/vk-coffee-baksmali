.class public Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;
.super Lme/grishka/appkit/fragments/ToolbarFragment;
.source "ManagerEditFragment.java"


# instance fields
.field private profile:Lcom/vkcoffee/android/UserProfile;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Lcom/vkcoffee/android/UserProfile;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->remove()V

    return-void
.end method

.method public static open(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 223
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v1, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    new-instance v2, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method private remove()V
    .locals 7

    .prologue
    .line 284
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08024e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/UserProfile;->getNameInCase(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return-void
.end method

.method private save()V
    .locals 14

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v1, 0x7f100234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->getCheckedId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, "role":Ljava/lang/String;
    const v0, 0x7f08023d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "displayableRole":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 253
    .local v13, "showContact":Landroid/widget/CheckBox;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v1, 0x7f10025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "contactTitle":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 255
    .local v4, "show":Z
    move-object v10, v3

    .line 256
    .local v10, "str":Ljava/lang/String;
    move v11, v4

    .line 257
    .local v11, "z":Z
    move-object v12, v5

    .line 258
    .local v12, "str2":Ljava/lang/String;
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsEditManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$4;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 281
    return-void

    .line 236
    .end local v3    # "role":Ljava/lang/String;
    .end local v4    # "show":Z
    .end local v5    # "contactTitle":Ljava/lang/String;
    .end local v9    # "displayableRole":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "z":Z
    .end local v12    # "str2":Ljava/lang/String;
    .end local v13    # "showContact":Landroid/widget/CheckBox;
    :pswitch_0
    const-string v3, "moderator"

    .line 237
    .restart local v3    # "role":Ljava/lang/String;
    const v0, 0x7f08023f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    .restart local v9    # "displayableRole":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v3    # "role":Ljava/lang/String;
    .end local v9    # "displayableRole":Ljava/lang/String;
    :pswitch_1
    const-string v3, "editor"

    .line 241
    .restart local v3    # "role":Ljava/lang/String;
    const v0, 0x7f08023e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 242
    .restart local v9    # "displayableRole":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v3    # "role":Ljava/lang/String;
    .end local v9    # "displayableRole":Ljava/lang/String;
    :pswitch_2
    const-string v3, "administrator"

    .line 245
    .restart local v3    # "role":Ljava/lang/String;
    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 246
    .restart local v9    # "displayableRole":Ljava/lang/String;
    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f100255
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDecorator()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 182
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 183
    .local v7, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 199
    iget v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->scrW:I

    const/16 v10, 0x39c

    if-lt v9, v10, :cond_2

    .line 200
    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 204
    .local v5, "pad":I
    :goto_1
    invoke-virtual {v7, v5, v11, v5, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 205
    return-void

    .line 185
    .end local v5    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 186
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    int-to-float v2, v9

    .line 187
    .local v2, "dp":F
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->isTablet:Z

    if-eqz v9, :cond_1

    .line 188
    const/4 v8, 0x0

    .line 192
    .local v8, "z":Z
    :goto_2
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v9, -0x1

    invoke-direct {v0, v6, v9, v2, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 193
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 197
    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "z":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "z":Z
    goto :goto_2

    .line 202
    .end local v2    # "dp":F
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "pad":I
    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 52
    const v0, 0x7f080222

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->setTitle(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->setHasOptionsMenu(Z)V

    .line 54
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->updateConfiguration()V

    .line 177
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->updateDecorator()V

    .line 178
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v6, 0x7f0300ac

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 69
    .local v5, "v":Landroid/view/View;
    iput-object v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    .line 70
    const v6, 0x7f10020a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v6, 0x7f10012e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f080221

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/UserProfile;->getNameInCase(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v6, 0x7f100234

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .line 73
    .local v1, "radoigroup":Lcom/vkcoffee/android/ui/CompoundRadioGroup;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v7, "role"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v7, "role"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "string":Ljava/lang/String;
    const/4 v0, -0x1

    .line 76
    .local v0, "obj":I
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 96
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_1
    const-string v6, "creator"

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "role"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const v6, 0x7f100232

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v6, 0x7f10024f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .end local v0    # "obj":I
    .end local v4    # "string":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v7, "contact_title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 118
    .local v2, "show":Z
    const v6, 0x7f100258

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 119
    .local v3, "showContact":Landroid/widget/CheckBox;
    new-instance v6, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    if-eqz v2, :cond_4

    .line 141
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v7, 0x7f10025a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v8, "contact_title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    :goto_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 162
    const v6, 0x7f10024f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$3;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-object v5

    .line 78
    .end local v2    # "show":Z
    .end local v3    # "showContact":Landroid/widget/CheckBox;
    .restart local v0    # "obj":I
    .restart local v4    # "string":Ljava/lang/String;
    :sswitch_0
    const-string v6, "moderator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 80
    goto/16 :goto_0

    .line 84
    :sswitch_1
    const-string v6, "editor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    const/4 v0, 0x2

    .line 86
    goto/16 :goto_0

    .line 90
    :sswitch_2
    const-string v6, "administrator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 98
    :pswitch_0
    const v6, 0x7f100257

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_1

    .line 101
    :pswitch_1
    const v6, 0x7f100255

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_1

    .line 104
    :pswitch_2
    const v6, 0x7f100256

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    goto/16 :goto_1

    .line 111
    :cond_2
    const v6, 0x7f10024f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 114
    .end local v0    # "obj":I
    .end local v4    # "string":Ljava/lang/String;
    :cond_3
    const v6, 0x7f100255

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->setCheckedId(I)V

    .line 115
    const v6, 0x7f10024f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 143
    .restart local v2    # "show":Z
    .restart local v3    # "showContact":Landroid/widget/CheckBox;
    :cond_4
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v7, 0x7f10025a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v7, 0x7f100259

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    const v7, 0x7f100259

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 76
    :sswitch_data_0
    .sparse-switch
        -0x777d5afb -> :sswitch_0
        -0x4df3de93 -> :sswitch_1
        -0x26e03d33 -> :sswitch_2
    .end sparse-switch

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 305
    .local v0, "dlg":Landroid/app/Dialog;
    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 306
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 57
    const v1, 0x7f080451

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 58
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 59
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/ToolbarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->content:Landroid/view/View;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->updateConfiguration()V

    .line 218
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->updateDecorator()V

    .line 219
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lme/grishka/appkit/fragments/ToolbarFragment;->onDestroyView()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->view:Landroid/view/View;

    .line 229
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->save()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_split"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_0
    return-void
.end method
