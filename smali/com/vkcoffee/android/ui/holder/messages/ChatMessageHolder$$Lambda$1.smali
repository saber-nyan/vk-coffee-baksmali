.class final synthetic Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$$Lambda$1;->arg$3:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lambda$processAttachments$436(Ljava/util/ArrayList;ILandroid/view/View;)V

    return-void
.end method
