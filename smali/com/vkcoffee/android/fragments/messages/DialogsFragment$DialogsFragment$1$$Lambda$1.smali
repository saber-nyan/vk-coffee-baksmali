.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$1$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Lcom/vkcoffee/android/Message;

.field private final arg$3:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/Message;
    .param p3, "var3"    # Landroid/content/Intent;

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1485
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/Message;

    .line 1486
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$3:Landroid/content/Intent;

    .line 1487
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;)Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;
    .param p2, "var2"    # Landroid/content/Intent;

    .prologue
    .line 1490
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public onUnreadCountLoaded(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/Message;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$1;->arg$3:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onReceive$449(Lcom/vkcoffee/android/Message;Landroid/content/Intent;II)V

    .line 1495
    return-void
.end method
