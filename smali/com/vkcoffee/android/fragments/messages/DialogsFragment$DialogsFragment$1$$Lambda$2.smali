.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;
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
    name = "DialogsFragment$1$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1506
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    .line 1507
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1510
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$2;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onReceive$450(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    return-void
.end method
