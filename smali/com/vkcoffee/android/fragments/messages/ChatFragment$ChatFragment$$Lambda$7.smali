.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$7"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4138
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4139
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 4142
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onCreateContentView$413(Landroid/view/View;)V

    .line 4147
    return-void
.end method
