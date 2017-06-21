.class final synthetic Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/attachments/GiftAttachment;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/GiftAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;-><init>(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/GiftAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;->arg$2:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment;->lambda$getFullView$198(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
