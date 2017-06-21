.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;
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
    name = "ChatFragment$$Lambda$6"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 4117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4118
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4119
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$2:Ljava/lang/String;

    .line 4120
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$3:Landroid/support/v7/widget/Toolbar;

    .line 4121
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 4124
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->arg$3:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$setDialogIcon$412(Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V

    .line 4129
    return-void
.end method
