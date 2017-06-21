.class public Lcom/vkcoffee/android/fragments/VotesFragment;
.super Lcom/vkcoffee/android/fragments/BaseListFragment;
.source "VotesFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ActivityResulter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/VotesFragment$Extra;,
        Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;,
        Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;,
        Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/BaseListFragment",
        "<",
        "Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;",
        ">;",
        "Lcom/vkcoffee/android/ui/ActivityResulter;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_BALANCE_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.actions.BALANCE_CHANGED"


# instance fields
.field private mActive:Z

.field private mAdapter:Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

.field private mBalance:I

.field private mManager:Lcom/vkcoffee/android/data/PurchasesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/PurchasesManager",
            "<",
            "Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mPackage:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequiredBalance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/vkcoffee/android/fragments/VotesFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/VotesFragment$1;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/VotesFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mBalance:I

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/VotesFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mBalance:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/VotesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mActive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/VotesFragment;)Lcom/vkcoffee/android/data/PurchasesManager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/VotesFragment;)Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mAdapter:Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/VotesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->onGPSError()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/VotesFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mRequiredBalance:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/VotesFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment;->notifyBalanceHasChanged(I)V

    return-void
.end method

.method private notifyBalanceHasChanged(I)V
    .locals 3
    .param p1, "newBalance"    # I

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.actions.BALANCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "balance"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mRequiredBalance:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mRequiredBalance:I

    if-lt p1, v1, :cond_0

    .line 164
    const-string/jumbo v1, "payment_required"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private onGPSError()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v1, -0x2

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->onError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    new-instance v2, Lcom/vkcoffee/android/fragments/VotesFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/VotesFragment$4;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/VotesFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/VotesFragment$3;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 183
    return-void
.end method


# virtual methods
.method public doLoadData()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/VotesFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/VotesFragment$2;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 143
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mAdapter:Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;-><init>(Lcom/vkcoffee/android/fragments/VotesFragment;Lcom/vkcoffee/android/fragments/VotesFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mAdapter:Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mAdapter:Lcom/vkcoffee/android/fragments/VotesFragment$VotesAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->loadData()V

    .line 151
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/data/PurchasesManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    new-instance v0, Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/data/PurchasesManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "requiredBalance"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mRequiredBalance:I

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->setRefreshEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mPackage:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vkcoffee.android.actions.BALANCE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/FragmentWrapperActivity;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onDestroy()V

    .line 121
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/FragmentWrapperActivity;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 123
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onStart()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mActive:Z

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onStop()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->mActive:Z

    .line 96
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f0805a1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->setTitle(I)V

    .line 84
    return-void
.end method

.method public setListViewAppearance(Landroid/widget/ListView;)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/BaseListFragment;->setListViewAppearance(Landroid/widget/ListView;)V

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 104
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 105
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 106
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 107
    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 108
    return-void
.end method
