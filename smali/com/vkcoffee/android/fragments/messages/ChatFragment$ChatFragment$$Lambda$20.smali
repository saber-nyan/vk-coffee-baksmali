.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$20"
.end annotation


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4376
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;->instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 4380
    sget-object v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;->instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;
    .param p2, "var2"    # Ljava/lang/Object;

    .prologue
    .line 4384
    check-cast p1, Lcom/vkcoffee/android/Message;

    .end local p1    # "var1":Ljava/lang/Object;
    check-cast p2, Lcom/vkcoffee/android/Message;

    .end local p2    # "var2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$forward$433(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/Message;)I

    move-result v0

    return v0
.end method
