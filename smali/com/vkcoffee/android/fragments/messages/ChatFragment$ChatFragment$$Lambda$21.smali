.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$21"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4394
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4395
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4398
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$loadFwdUsers$435(Ljava/util/ArrayList;)V

    .line 4403
    return-void
.end method
