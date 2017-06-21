.class public Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;
.super Ljava/lang/Object;
.source "ChatMessageHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatMessageHolder$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "chatMessageHolder"    # Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    .param p2, "arrayList"    # Ljava/util/ArrayList;
    .param p3, "i"    # I

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .line 638
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    .line 639
    iput p3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$3:I

    .line 640
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "chatMessageHolder"    # Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "i"    # I

    .prologue
    .line 643
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->arg$3:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lambda$processAttachments$436(Ljava/util/ArrayList;ILandroid/view/View;)V

    .line 648
    return-void
.end method
