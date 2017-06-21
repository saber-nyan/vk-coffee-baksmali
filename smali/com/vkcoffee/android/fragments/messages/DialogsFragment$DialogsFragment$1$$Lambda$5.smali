.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$1$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Lcom/vkcoffee/android/Message;

.field private final arg$3:Landroid/content/Intent;

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/Message;
    .param p3, "var3"    # Landroid/content/Intent;
    .param p4, "var4"    # I

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1570
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$2:Lcom/vkcoffee/android/Message;

    .line 1571
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$3:Landroid/content/Intent;

    .line 1572
    iput p4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$4:I

    .line 1573
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;
    .param p2, "var2"    # Landroid/content/Intent;
    .param p3, "var3"    # I

    .prologue
    .line 1576
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$2:Lcom/vkcoffee/android/Message;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$3:Landroid/content/Intent;

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$5;->arg$4:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$null$446(Lcom/vkcoffee/android/Message;Landroid/content/Intent;I)V

    .line 1581
    return-void
.end method
