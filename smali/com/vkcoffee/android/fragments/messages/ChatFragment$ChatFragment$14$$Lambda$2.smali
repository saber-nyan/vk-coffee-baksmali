.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$14$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:I

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 4559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4560
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4561
    iput p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$2:I

    .line 4562
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$3:Ljava/lang/String;

    .line 4563
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 4566
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onError$426(ILjava/lang/String;)V

    .line 4571
    return-void
.end method
