.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;
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
    name = "ChatFragment$14$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:Z

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:J


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZLjava/util/ArrayList;J)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Ljava/util/ArrayList;
    .param p4, "var4"    # J

    .prologue
    .line 4536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4537
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4538
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$2:Z

    .line 4539
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$3:Ljava/util/ArrayList;

    .line 4540
    iput-wide p4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$4:J

    .line 4541
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZLjava/util/ArrayList;J)Ljava/lang/Runnable;
    .locals 7
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p1, "var1"    # Z
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # J

    .prologue
    .line 4544
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZLjava/util/ArrayList;J)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4548
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$2:Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$3:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->arg$4:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onMessagesLoaded$425(ZLjava/util/ArrayList;J)V

    .line 4549
    return-void
.end method
