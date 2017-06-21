.class public Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;
.super Lcom/vkcoffee/android/ui/ListDialog;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateNewMessageDialog"
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

.field private attachedListener:Lcom/vkcoffee/android/ui/ListDialog$OnAttachedListener;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ListDialog;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->adapter:Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .line 278
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;-><init>(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 291
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;-><init>(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->attachedListener:Lcom/vkcoffee/android/ui/ListDialog$OnAttachedListener;

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->adapter:Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->adapter:Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->createItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private createItems()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 309
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v7, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v7}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 312
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 313
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 316
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/UserProfile;

    .line 317
    .local v10, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    const/4 v1, 0x0

    iget v2, v10, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, v10, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    const v4, 0x7f0f0007

    iget-object v5, v10, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const v6, 0x7f0202f2

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;-><init>(IILjava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 319
    .end local v10    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    const v1, 0x7fffffff

    const v2, 0x7f080110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0201aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    const/high16 v1, -0x80000000

    const v2, 0x7f0805bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02014b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    return-object v9
.end method

.method static synthetic lambda$showNewDialogs$709(Lcom/vkcoffee/android/functions/VoidF1;Landroid/content/Context;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view1"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .prologue
    .line 326
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, p5, v2

    if-nez v2, :cond_2

    .line 327
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 337
    :cond_1
    return-void

    .line 329
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 332
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    int-to-long v4, v3

    cmp-long v3, v4, p5

    if-nez v3, :cond_3

    .line 333
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v5, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public showNewDialogs(Landroid/content/Context;Landroid/view/View;Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, "f":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->createItems()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x800055

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    const/high16 v0, 0x43830000    # 262.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {p3, p1}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/functions/VoidF1;Landroid/content/Context;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->attachedListener:Lcom/vkcoffee/android/ui/ListDialog$OnAttachedListener;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->show(Landroid/content/Context;Ljava/util/List;IIILandroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;Lcom/vkcoffee/android/ui/ListDialog$OnAttachedListener;)V

    .line 338
    return-void
.end method
