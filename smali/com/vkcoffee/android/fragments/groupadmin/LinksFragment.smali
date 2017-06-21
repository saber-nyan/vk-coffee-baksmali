.class public Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.source "LinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$Holder;
    }
.end annotation


# instance fields
.field private changed:Z

.field private dragPrevPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->changed:Z

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->showEditDialog(Lcom/vkcoffee/android/UserProfile;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->confirmAndDelete(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->doDelete(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->dragPrevPos:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->addLink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->editLink(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->changed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsAddLink;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;

    .line 206
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 225
    return-void
.end method

.method private confirmAndDelete(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "link"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 269
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 270
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08021e

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 280
    return-void
.end method

.method private doDelete(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "link"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 283
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsDeleteLink;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsDeleteLink;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$7;

    .line 284
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$7;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsDeleteLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 294
    return-void
.end method

.method private editLink(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
    .locals 3
    .param p1, "link"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "descr"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsEditLink;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1, v2, p2}, Lcom/vkcoffee/android/api/groups/GroupsEditLink;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;

    .line 229
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsEditLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 259
    return-void
.end method

.method private sendReorder(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "after"    # I

    .prologue
    .line 297
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;

    .line 298
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 323
    return-void
.end method

.method private showEditDialog(Lcom/vkcoffee/android/UserProfile;Z)V
    .locals 9
    .param p1, "link"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x1

    const v8, 0x7f100169

    const v7, 0x7f10012e

    const v6, 0x7f1000dd

    const/16 v5, 0x8

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f030081

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 163
    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    if-nez p2, :cond_3

    .line 166
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    .line 180
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5

    const v1, 0x7f080146

    .line 184
    :goto_2
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_6

    const v1, 0x7f080451

    :goto_3
    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;

    invoke-direct {v3, p0, p2, v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;ZLandroid/view/View;Lcom/vkcoffee/android/UserProfile;)V

    .line 186
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    const/4 v3, 0x0

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return-void

    .line 163
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    :cond_3
    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v1, v2, :cond_4

    .line 169
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    :cond_5
    const v1, 0x7f08005b

    goto :goto_2

    .line 185
    :cond_6
    const v1, 0x7f08031e

    goto :goto_3
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/app/Fragment;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetLinks;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 105
    return-void
.end method

.method protected getHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$Holder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->setHasOptionsMenu(Z)V

    .line 48
    const v0, 0x7f080240

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->setTitle(I)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 53
    const/high16 v0, 0x7f110000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 152
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->changed:Z

    if-eqz v1, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 157
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 5
    .param p1, "button"    # Landroid/view/View;
    .param p2, "link"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f08013d

    invoke-interface {v1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 77
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f080119

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 78
    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 92
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 93
    return-void
.end method

.method public onItemClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000a2

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->showEditDialog(Lcom/vkcoffee/android/UserProfile;Z)V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
