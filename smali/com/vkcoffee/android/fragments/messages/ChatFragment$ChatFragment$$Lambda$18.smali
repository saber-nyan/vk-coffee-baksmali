.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFragment$$Lambda$18"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Lcom/vkcoffee/android/Message;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 4339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4340
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 4341
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$2:Ljava/util/ArrayList;

    .line 4342
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$3:Lcom/vkcoffee/android/Message;

    .line 4343
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 4346
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->arg$3:Lcom/vkcoffee/android/Message;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$showMessageOptions$431(Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;Landroid/content/DialogInterface;I)V

    .line 4351
    return-void
.end method
