.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;
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
    name = "ChatFragment$$Lambda$25"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/util/ArrayList;
    .param p4, "var4"    # Ljava/lang/String;

    .prologue
    .line 4470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4471
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4472
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$2:Ljava/lang/String;

    .line 4473
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$3:Ljava/util/ArrayList;

    .line 4474
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$4:Ljava/lang/String;

    .line 4475
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 4478
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$3:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->arg$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$null$421(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 4483
    return-void
.end method
