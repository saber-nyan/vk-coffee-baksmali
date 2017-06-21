.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$1$$Lambda$6"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:I

.field private final arg$3:Lcom/vkcoffee/android/DialogEntry;

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILcom/vkcoffee/android/DialogEntry;I)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # I
    .param p3, "var3"    # Lcom/vkcoffee/android/DialogEntry;
    .param p4, "var4"    # I

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1594
    iput p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$2:I

    .line 1595
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$3:Lcom/vkcoffee/android/DialogEntry;

    .line 1596
    iput p4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$4:I

    .line 1597
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILcom/vkcoffee/android/DialogEntry;I)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;
    .param p3, "var3"    # I

    .prologue
    .line 1600
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILcom/vkcoffee/android/DialogEntry;I)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$3:Lcom/vkcoffee/android/DialogEntry;

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$6;->arg$4:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$null$448(ILcom/vkcoffee/android/DialogEntry;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    return-void
.end method
