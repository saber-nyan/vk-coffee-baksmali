.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$15"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4282
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4283
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF2;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4286
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;
    .param p2, "var2"    # Ljava/lang/Object;

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "var1":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onOptionsItemSelected$423(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 4291
    return-void
.end method
