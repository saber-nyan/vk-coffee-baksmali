.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.super Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final REQ_CREATE_CHAT:I = 0x143

.field private static final REQ_SELECT_USER:I = 0x141

.field private static final REQ_SELECT_USERS:I = 0x142

.field private static final TEXTS:[I


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

.field private contentWrap:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private dataLoading:Z

.field private displayItems:Ljava/util/ArrayList;

.field private dlgs:Ljava/util/ArrayList;

.field private emptyView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private error:Lcom/vkcoffee/android/ui/ErrorViewHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private isSearchExpanded:Z

.field private list:Lme/grishka/appkit/views/UsableRecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

.field private moreAvailable:Z

.field private progress:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field public searchQuery:Ljava/lang/String;

.field private searchResults:Ljava/util/ArrayList;

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field public selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

.field private selectedTempUsers:Ljava/util/ArrayList;

.field private suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

.field private title:Ljava/lang/CharSequence;

.field private toolbarStatePanel:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private toolbarStatePanelProgress:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private toolbarStatePanelText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    const-class v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 128
    .local v0, "var0":Z
    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->$assertionsDisabled:Z

    .line 129
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->TEXTS:[I

    .line 130
    return-void

    .line 125
    .end local v0    # "var0":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var0":Z
    goto :goto_0

    .line 129
    :array_0
    .array-data 4
        0x7f08050f
        0x7f080510
        0x7f08050e
        0x7f08050d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 262
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 263
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    .line 443
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSearchExpanded:Z

    .line 444
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->preventDuplicates()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;I)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateState(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->v:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Z
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSelectMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method public static checkCrazyMode()Z
    .locals 3

    .prologue
    .line 1724
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showCrazy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkEmptyCrazyMode()Z
    .locals 3

    .prologue
    .line 1735
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emptyCrazy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSelectMode()Z
    .locals 5

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "var2":Z
    move v0, v1

    .line 449
    .local v0, "var1":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 450
    move v0, v1

    .line 451
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 456
    .end local v0    # "var1":I
    :cond_0
    return v0
.end method

.method static lambda$createShortcut$466(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 2
    .param p0, "var0"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Messages;->getShortcutIntent(Lcom/vkcoffee/android/UserProfile;)Landroid/content/Intent;

    move-result-object v0

    .line 462
    .local v0, "var1":Landroid/content/Intent;
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method

.method static lambda$null$465()V
    .locals 3

    .prologue
    .line 468
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 469
    return-void
.end method

.method static lambda$onCreateContentView$457(Lcom/vkcoffee/android/functions/VoidF1;Landroid/view/View;)V
    .locals 2
    .param p0, "var0"    # Lcom/vkcoffee/android/functions/VoidF1;
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 473
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->showNewDialogs(Landroid/content/Context;Landroid/view/View;Lcom/vkcoffee/android/functions/VoidF1;)V

    .line 474
    return-void
.end method

.method public static offCrazyMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1721
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showCrazy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showCrazy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1722
    :cond_0
    return-void
.end method

.method public static offEmptyCrazyMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1732
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emptyCrazy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emptyCrazy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1733
    :cond_0
    return-void
.end method

.method public static onCrazyMode()V
    .locals 3

    .prologue
    .line 1718
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showCrazy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1719
    return-void
.end method

.method public static onEmptyCrazyMode()V
    .locals 3

    .prologue
    .line 1729
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emptyCrazy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1730
    return-void
.end method

.method private preventDuplicates()V
    .locals 4

    .prologue
    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, "var3":Ljava/util/ArrayList;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 480
    .local v1, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    return-void

    .line 481
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 482
    .local v0, "var1":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 485
    :cond_1
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private search(Ljava/lang/String;)V
    .locals 5
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 492
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 494
    if-nez p1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 496
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    .line 497
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 499
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 500
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const v1, 0x7f0802eb

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Landroid/view/View;I)V

    .line 502
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonVisible(Landroid/view/View;Z)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 507
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const v1, 0x7f080304

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Landroid/view/View;I)V

    .line 512
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonVisible(Landroid/view/View;Z)V

    .line 515
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 516
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 517
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 518
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 519
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 520
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList(Z)V

    .line 527
    return-void
.end method

.method private updateList(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .prologue
    .line 530
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 531
    return-void
.end method

.method private updateMutedStates()Z
    .locals 3

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, "var2":Z
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 544
    return v1

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v2}, Lcom/vkcoffee/android/DialogEntry;->updateMutedState()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 538
    const/4 v1, 0x0

    .line 536
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateNonFriendsOnlines()V
    .locals 5

    .prologue
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 555
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 556
    new-instance v3, Lcom/vkcoffee/android/api/users/GetOnlines;

    invoke-direct {v3, v2}, Lcom/vkcoffee/android/api/users/GetOnlines;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/users/GetOnlines;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 566
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 568
    :cond_0
    return-void

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 551
    .local v0, "dlg":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-lez v3, :cond_2

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-ge v3, v4, :cond_2

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->isFriend(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 552
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 5
    .param p1, "var1"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 571
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 576
    :pswitch_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelText:Landroid/widget/TextView;

    .line 578
    .local v0, "var2":Landroid/widget/TextView;
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->TEXTS:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 579
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->TEXTS:[I

    aget p1, v1, p1

    .line 584
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 585
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 586
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 581
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->TEXTS:[I

    aget p1, v1, v3

    goto :goto_1

    .line 589
    .end local v0    # "var2":Landroid/widget/TextView;
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelText:Landroid/widget/TextView;

    const v2, 0x7f08050d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 590
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 591
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->title:Ljava/lang/CharSequence;

    invoke-super {p0, v1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public confirmAndClearHistory(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 3
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/functions/VoidF2;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->clearHistory(Landroid/content/Context;ILjava/lang/Object;Lcom/vkcoffee/android/functions/VoidF2;)V

    .line 603
    return-void
.end method

.method public crazy(I)V
    .locals 5
    .param p1, "peer"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Additional"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bv"

    const-string v4, "bv"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1yyF4slwKYe1J/2lOLNSjQ=="

    invoke-static {v3}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "internalAccess"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "helpers"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "donnated"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "donnatedVerifCoffee"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 243
    .local v0, "don":Z
    :goto_0
    invoke-static {p1}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->containsCrazy(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-static {p1}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->deleteCrazy(I)V

    .line 245
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 246
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u0423\u0434\u0430\u043b\u0435\u043d \u0441\u043e \u0441\u043f\u0438\u0441\u043a\u0430"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 258
    :goto_1
    return-void

    .end local v0    # "don":Z
    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    .line 247
    .restart local v0    # "don":Z
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countCrazyInt()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    if-nez v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u041d\u0435\u043b\u044c\u0437\u044f \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0442\u044c Crazy Typing \u0434\u043b\u044f \u0431\u043e\u043b\u0435\u0435 \u0447\u0435\u043c 5-\u0442\u0438 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432, \u0435\u0441\u043b\u0438 \u0412\u044b \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 253
    :cond_3
    invoke-static {p1}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->addToCrazy(I)V

    .line 254
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 255
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d \u0432 \u0441\u043f\u0438\u0441\u043e\u043a"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public createShortcut(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 2
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 606
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 607
    return-void
.end method

.method lambda$confirmAndClearHistory$464(Ljava/lang/Integer;Lcom/vkcoffee/android/DialogEntry;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Integer;
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Messages;->removeDialog(I)V

    .line 613
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 614
    return-void
.end method

.method lambda$null$446(Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;
    .param p2, "var2"    # Landroid/content/Intent;
    .param p3, "var3"    # I

    .prologue
    .line 133
    new-instance v0, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 134
    .local v0, "var4":Lcom/vkcoffee/android/DialogEntry;
    iput-object p1, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 135
    const-string v1, "sender_photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 136
    const-string v1, "peer_profile"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 137
    iput p3, v0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->preventDuplicates()V

    .line 140
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 141
    return-void
.end method

.method lambda$null$447(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 2
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->preventDuplicates()V

    .line 146
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 147
    return-void
.end method

.method lambda$null$448(ILcom/vkcoffee/android/DialogEntry;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;
    .param p3, "var3"    # I
    .param p4, "var4"    # Ljava/util/ArrayList;
    .param p5, "var5"    # Ljava/lang/String;
    .param p6, "var6"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 151
    .local v0, "var7":Lcom/vkcoffee/android/UserProfile;
    iput p1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 152
    iput-object p6, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 153
    iput-object p5, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 154
    iput-object v0, p2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 155
    iput p3, p2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 156
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-void
.end method

.method lambda$null$451(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;
    .param p2, "var2"    # Ljava/util/ArrayList;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1, p2}, Lcom/vkcoffee/android/DialogEntry;->setWritesMessage(Ljava/util/Collection;)V

    .line 165
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 168
    :cond_0
    return-void
.end method

.method lambda$onCreate$453(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 5
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "profile"

    iget-object v4, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 619
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 620
    return-void
.end method

.method lambda$onCreateContentView$454(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/View;

    .prologue
    .line 624
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080324

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 625
    return-void
.end method

.method lambda$onCreateContentView$455(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 630
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 632
    return-void
.end method

.method lambda$onCreateContentView$456(Landroid/view/LayoutInflater;Ljava/lang/Long;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 637
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setMultiSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSearchEnabled(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080110

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080324

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method lambda$onCreateContentView$458(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSearchExpanded:Z

    .line 647
    if-nez p1, :cond_0

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->search(Ljava/lang/String;)V

    .line 651
    :cond_0
    if-eqz p1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateSearchIndex()V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_2

    .line 656
    if-eqz p1, :cond_3

    .line 657
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 663
    :cond_2
    :goto_0
    return-void

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_0
.end method

.method lambda$onDialogsLoaded$459(ZLjava/util/ArrayList;)V
    .locals 5
    .param p1, "var1x"    # Z
    .param p2, "var2"    # Ljava/util/ArrayList;

    .prologue
    const/4 v4, 0x0

    .line 687
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 688
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    .local v0, "var3":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 695
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->preventDuplicates()V

    .line 696
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateMutedStates()Z

    .line 697
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 698
    move-object v1, p0

    .line 699
    .local v1, "var4":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_6

    .line 700
    :cond_1
    const/4 p1, 0x1

    .line 705
    :goto_0
    iput-boolean p1, v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    .line 706
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    if-eqz v2, :cond_2

    .line 707
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 710
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 712
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 715
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v2, :cond_4

    .line 716
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateSearchIndex()V

    .line 719
    :cond_4
    if-nez v0, :cond_5

    .line 720
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateNonFriendsOnlines()V

    .line 724
    .end local v0    # "var3":I
    .end local v1    # "var4":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    :cond_5
    return-void

    .line 702
    .restart local v0    # "var3":I
    .restart local v1    # "var4":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    :cond_6
    const/4 p1, 0x0

    goto :goto_0
.end method

.method lambda$onDialogsLoaded$462(ZLjava/util/ArrayList;I)V
    .locals 3
    .param p1, "var1x"    # Z
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # I

    .prologue
    const/4 v2, 0x0

    .line 744
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 745
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 746
    if-eqz p1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 751
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList()V

    .line 752
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p3, :cond_3

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 764
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 768
    :cond_2
    return-void

    .line 755
    :cond_3
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    goto :goto_0
.end method

.method lambda$onError$460(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 727
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 728
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setErrorInfo(ILjava/lang/String;)V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibilityAnimated(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 735
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method lambda$onError$461(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 771
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 772
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setErrorInfo(ILjava/lang/String;)V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibilityAnimated(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 779
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 785
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method lambda$onReceive$449(Lcom/vkcoffee/android/Message;Landroid/content/Intent;II)V
    .locals 3
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;
    .param p2, "var2"    # Landroid/content/Intent;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .prologue
    const v2, 0x77359400

    .line 171
    if-ge p3, v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, p1, p2, p4}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 177
    .local v0, "var5":Lcom/vkcoffee/android/DialogEntry;
    iput-object p1, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 178
    const-string v1, "sender_photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Lcom/vkcoffee/android/DialogEntry;->updateMutedState()Z

    .line 180
    sub-int v1, p3, v2

    invoke-static {p0, p3, v0, p4}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILcom/vkcoffee/android/DialogEntry;I)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method lambda$onReceive$450(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iput-object p3, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 187
    if-eqz p4, :cond_0

    .line 188
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iput-object p4, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 191
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateList(Z)V

    .line 192
    return-void
.end method

.method lambda$onReceive$452(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;
    .param p2, "var2"    # Ljava/util/ArrayList;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method

.method lambda$updateList$463(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->setData(Ljava/util/ArrayList;)V

    .line 675
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateMutedStates()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->notifyDataSetChanged()V

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 683
    :cond_3
    return-void
.end method

.method public loadData(Z)V
    .locals 5
    .param p1, "var1"    # Z

    .prologue
    const/16 v4, 0x14

    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "var3":B
    const/4 v0, 0x0

    .line 789
    .local v0, "var2":I
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->moreAvailable:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_2

    .line 790
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dataLoading:Z

    .line 791
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 792
    if-nez p1, :cond_1

    .line 793
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->checkCrazyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->checkEmptyCrazyMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 796
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    invoke-static {v0, v4, v3}, Lcom/vkcoffee/android/MessagesCrazy;->getCrazyDialogs(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    .line 870
    :cond_2
    :goto_0
    return-void

    .line 819
    :cond_3
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    invoke-static {v0, v4, v3}, Lcom/vkcoffee/android/data/Messages;->getDialogs(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    goto :goto_0

    .line 841
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    .line 842
    .local v2, "var4":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 843
    move v0, v1

    .line 848
    :goto_1
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    invoke-static {v2, v0, v4, v3}, Lcom/vkcoffee/android/data/Messages;->search(Ljava/lang/String;IILcom/vkcoffee/android/data/Messages$SearchCallback;)V

    goto :goto_0

    .line 845
    :cond_5
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 874
    packed-switch p1, :pswitch_data_0

    .line 917
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 876
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 877
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 879
    .local v3, "var7":Landroid/os/Bundle;
    new-instance v4, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    const-string v5, "uid"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    const-string v5, "photo"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 883
    .end local v3    # "var7":Landroid/os/Bundle;
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 884
    const-string v4, "result"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 885
    .local v0, "var4":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 886
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 887
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 889
    .local v2, "var6":Lcom/vkcoffee/android/UserProfile;
    new-instance v4, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v6, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v5, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 891
    .end local v2    # "var6":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 892
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 893
    .restart local v3    # "var7":Landroid/os/Bundle;
    const-string v4, "users"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 894
    const-string v4, "create"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 895
    new-instance v4, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v5, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-direct {v4, v5, v3}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    const/16 v5, 0x143

    invoke-virtual {v4, p0, v5}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 901
    .end local v0    # "var4":Ljava/util/ArrayList;
    .end local v3    # "var7":Landroid/os/Bundle;
    :pswitch_2
    if-eq p2, v4, :cond_0

    .line 902
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 903
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 905
    .local v1, "var5":[I
    const/4 p1, 0x0

    :goto_1
    array-length v4, v1

    if-lt p1, v4, :cond_3

    .line 909
    new-instance v4, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSearchEnabled(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setMultiSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setPresetUsers([I)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v4

    const/16 v5, 0x142

    invoke-virtual {v4, p0, v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 912
    .end local v1    # "var5":[I
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 913
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04000a

    const v6, 0x7f04000b

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 906
    .restart local v1    # "var5":[I
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    aput v4, v1, p1

    .line 905
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 874
    :pswitch_data_0
    .packed-switch 0x141
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 923
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 925
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSelectMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 926
    const v0, 0x7f0802ab

    .line 931
    .local v0, "var2":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setTitle(I)V

    .line 932
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setHasOptionsMenu(Z)V

    .line 933
    sget-object v2, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 935
    .local v1, "var3":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 938
    .end local v1    # "var3":Landroid/content/Intent;
    :cond_0
    return-void

    .line 928
    .end local v0    # "var2":I
    :cond_1
    const v0, 0x7f080469

    .restart local v0    # "var2":I
    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 941
    const/4 v1, 0x0

    .line 942
    .local v1, "var2":Z
    move v0, v1

    .line 943
    .local v0, "var1":I
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSearchExpanded:Z

    if-eqz v2, :cond_0

    .line 944
    move v0, v1

    .line 945
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 947
    const/4 v0, 0x1

    .line 951
    .end local v0    # "var1":I
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 961
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 963
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "shakeUpd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 965
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->v:Landroid/os/Vibrator;

    .line 966
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 967
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 966
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mAccelerometer:Landroid/hardware/Sensor;

    .line 968
    new-instance v1, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    invoke-direct {v1}, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    .line 969
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    new-instance v2, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->setOnShakeListener(Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;)V

    .line 982
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 983
    .local v0, "var2":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 984
    const-string v1, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 985
    const-string v1, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    const-string v1, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    const-string v1, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string v1, "com.vkcoffee.android.DIALOG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v1, "com.vkcoffee.android.MUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    const-string v1, "com.vkcoffee.android.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    const-string v1, "com.vkcoffee.android.TYPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 993
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    if-nez v1, :cond_1

    .line 994
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V

    .line 997
    :cond_1
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1028
    .local v6, "var6":Landroid/app/Activity;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "userphoto"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1029
    .local v9, "var9":Ljava/lang/String;
    const v10, 0x7f030089

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2    # "var2":Landroid/view/ViewGroup;
    check-cast p2, Landroid/view/ViewGroup;

    .line 1030
    .restart local p2    # "var2":Landroid/view/ViewGroup;
    const v10, 0x7f1001bf

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 1031
    const v10, 0x7f1001f6

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 1032
    const v10, 0x7f1001f8

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    .line 1033
    const v10, 0x7f100144

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    .line 1034
    new-instance v10, Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const v11, 0x7f10001a

    invoke-virtual {p2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vkcoffee/android/ui/ErrorViewHelper;-><init>(Landroid/view/View;)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .line 1035
    const v10, 0x7f1001f7

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/FloatingActionButton;

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 1036
    new-instance v10, Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    invoke-direct {v10, v6}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    .line 1037
    sget-boolean v10, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    if-nez v10, :cond_0

    .line 1038
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1040
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const v11, 0x7f100108

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const v11, 0x7f0802eb

    invoke-static {v10, v11}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Landroid/view/View;I)V

    .line 1042
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const v11, 0x7f0805bc

    invoke-static {v10, v11}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonText(Landroid/view/View;I)V

    .line 1043
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonVisible(Landroid/view/View;Z)V

    .line 1044
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1045
    sget-boolean v10, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v10, :cond_1

    .line 1046
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1048
    :cond_1
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v11, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v11, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1049
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v11, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v11, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1050
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 1051
    .local v3, "var13":Lme/grishka/appkit/views/UsableRecyclerView;
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    invoke-direct {v0, v9, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;-><init>(Ljava/lang/String;Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 1052
    .local v0, "var10":Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    .line 1053
    invoke-virtual {v3, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1054
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 1055
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v11, 0x7f020101

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 1056
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 1057
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v11, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;

    invoke-direct {v11, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 1071
    sget-boolean v10, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-nez v10, :cond_2

    .line 1072
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1074
    :cond_2
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(I)V

    .line 1076
    sget-boolean v10, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->$assertionsDisabled:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v10, :cond_3

    .line 1077
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1079
    :cond_3
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    .line 1080
    .local v1, "var11":Lcom/vkcoffee/android/functions/VoidF1;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 1082
    .local v7, "var7":Landroid/support/design/widget/FloatingActionButton;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSelectMode()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1083
    const/4 v4, 0x0

    .line 1088
    .local v4, "var4":B
    :goto_0
    invoke-virtual {v7, v4}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 1089
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/functions/VoidF1;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    new-instance v10, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;

    invoke-direct {v12, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$9;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    invoke-direct {v10, v11, v12}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 1103
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 1104
    .local v8, "var8":Lcom/vkcoffee/android/ui/SearchViewWrapper;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1106
    .local v2, "var12":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->isSelectMode()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1107
    const/4 v5, 0x1

    .line 1112
    .local v5, "var5":Z
    :goto_1
    new-instance v10, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-direct {v10, v8, v2, v5}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/content/Context;Z)V

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .line 1113
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v10}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1114
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    if-eqz v10, :cond_4

    .line 1115
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V

    .line 1118
    :cond_4
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setStateListener(Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;)V

    .line 1119
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->setData(Ljava/util/ArrayList;)V

    .line 1120
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 1121
    return-object p2

    .line 1085
    .end local v2    # "var12":Landroid/app/Activity;
    .end local v4    # "var4":B
    .end local v5    # "var5":Z
    .end local v8    # "var8":Lcom/vkcoffee/android/ui/SearchViewWrapper;
    :cond_5
    const/16 v4, 0x8

    .restart local v4    # "var4":B
    goto :goto_0

    .line 1109
    .restart local v2    # "var12":Landroid/app/Activity;
    .restart local v8    # "var8":Lcom/vkcoffee/android/ui/SearchViewWrapper;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "var5":Z
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/Menu;
    .param p2, "var2"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 1129
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->checkCrazyMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    const v1, 0x7f1000a2

    const-string v2, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u043a\u0435\u0448 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1134
    .local v0, "refresh":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1135
    const v1, 0x7f020311

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1136
    const v1, 0x7f100235

    const-string v2, "\u0412\u0430\u0436\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1139
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1143
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1145
    .end local v0    # "refresh":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1016
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroy()V

    .line 1019
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1162
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroyView()V

    .line 1164
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->offCrazyMode()V

    .line 1165
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->offEmptyCrazyMode()V

    .line 1167
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 1168
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    .line 1169
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 1170
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->emptyView:Landroid/view/View;

    .line 1171
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    .line 1172
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->error:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .line 1173
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    .line 1174
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelText:Landroid/widget/TextView;

    .line 1175
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelProgress:Landroid/widget/ProgressBar;

    .line 1176
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 1177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/MenuItem;

    .prologue
    .line 1149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000a2

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->clearMessagesCache(Landroid/app/Activity;)V

    .line 1152
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100235

    if-ne v0, v1, :cond_1

    .line 1153
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onImpMode()V

    .line 1154
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    const v1, 0x7fffffff

    const-string v2, "\u0412\u0430\u0436\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 1157
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1011
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shakeUpd"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1012
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onPause()V

    .line 1013
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 999
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onResume()V

    .line 1000
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shakeUpd"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1002
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateMutedStates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsAdapter;->notifyDataSetChanged()V

    .line 1006
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/os/Bundle;

    .prologue
    .line 1182
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1183
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030189

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    .line 1184
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    const v1, 0x7f1003da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelText:Landroid/widget/TextView;

    .line 1185
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    const v1, 0x7f1003db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelProgress:Landroid/widget/ProgressBar;

    .line 1186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1187
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1188
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateState(I)V

    .line 1189
    return-void
.end method

.method public readDialog(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 2
    .param p1, "dialog"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 206
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesMarkAsReadDialog;

    iget-object v1, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsReadDialog;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsReadDialog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 211
    return-void
.end method

.method public setListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    .line 1193
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->suggester:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V

    .line 1197
    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->toolbarStatePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1201
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1204
    :cond_1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->title:Ljava/lang/CharSequence;

    .line 1205
    return-void
.end method
