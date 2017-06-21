.class final synthetic Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/attachments/WikiAttachment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/attachments/WikiAttachment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/WikiAttachment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/attachments/WikiAttachment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;-><init>(Lcom/vkcoffee/android/attachments/WikiAttachment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/WikiAttachment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/attachments/WikiAttachment;->lambda$getViewForList$224(Landroid/view/View;)V

    return-void
.end method
