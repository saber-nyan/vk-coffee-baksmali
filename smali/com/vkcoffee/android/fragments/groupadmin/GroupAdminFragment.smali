.class public Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "GroupAdminFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminViewHolder;,
        Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;,
        Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private access:I

.field private adapter:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;

.field private id:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 48
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->openSubFragment(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->type:I

    return v0
.end method

.method private openSubFragment(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "f":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "id"

    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string/jumbo v3, "type"

    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->type:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v3, "access"

    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->isTablet:Z

    if-eqz v3, :cond_0

    .line 125
    const-string/jumbo v3, "_split"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "fragment":Landroid/app/Fragment;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fragment":Landroid/app/Fragment;
    check-cast v1, Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f10002d

    const-string/jumbo v5, "admin_inner"

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 138
    .end local v1    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "x":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error creating instance for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const v7, 0x7f020181

    const/4 v6, 0x3

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "adminLevel":I
    if-lt v0, v6, :cond_0

    .line 78
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f020180

    const v4, 0x7f08022d

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "info"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f020184

    const v4, 0x7f080255

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "services"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f02017e

    const v4, 0x7f080244

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "admins"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    .line 83
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f02017f

    const v4, 0x7f080216

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "blacklist"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 85
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f080260

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "invites"

    invoke-direct {v2, p0, v7, v3, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->type:I

    if-nez v2, :cond_2

    .line 88
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f080196

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "requests"

    invoke-direct {v2, p0, v7, v3, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f020183

    const v4, 0x7f08025d

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "users"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    if-lt v0, v6, :cond_4

    .line 93
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;

    const v3, 0x7f020182

    const v4, 0x7f080240

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "links"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_4
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->onDataLoaded(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->adapter:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$GroupAdminAdapter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->setTitle(I)V

    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->id:I

    .line 67
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->type:I

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "access"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access:I

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->setRefreshEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->loadData()V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_TITLE_CHANGED:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, -0x1

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 144
    .local v4, "view":Landroid/view/View;
    sget-boolean v6, Lcom/vkcoffee/android/Global;->isTablet:Z

    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->isTablet:Z

    .line 145
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->isTablet:Z

    if-nez v6, :cond_0

    .line 146
    new-instance v0, Lcom/vkcoffee/android/ui/CardItemDecorator;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 147
    .local v0, "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    const/high16 v8, -0x40000000    # -2.0f

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v10}, Lcom/vkcoffee/android/ui/CardItemDecorator;->setPadding(IIII)V

    .line 148
    const/high16 v6, -0x3ee00000    # -10.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/CardItemDecorator;->setFirstCardOffset(I)V

    .line 149
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 150
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v7, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V

    invoke-virtual {v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 186
    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .end local v4    # "view":Landroid/view/View;
    :goto_0
    return-object v4

    .line 165
    .restart local v4    # "view":Landroid/view/View;
    :cond_0
    new-instance v5, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$3;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$3;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Landroid/content/Context;)V

    .line 176
    .local v5, "wrap":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, "divider":Landroid/view/View;
    const/high16 v6, 0x26000000

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v2, "dlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    neg-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 182
    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    .local v3, "fragmentWrap":Landroid/widget/FrameLayout;
    const v6, 0x7f10002d

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 185
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v5

    .line 186
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 116
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 192
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 202
    :cond_0
    return-void
.end method
