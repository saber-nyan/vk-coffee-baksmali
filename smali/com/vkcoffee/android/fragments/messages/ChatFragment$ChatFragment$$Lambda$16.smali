.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$16"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4300
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4301
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4304
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;

    .prologue
    .line 4308
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "var1":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onOptionsItemSelected$424(Ljava/lang/Integer;)V

    .line 4309
    return-void
.end method
