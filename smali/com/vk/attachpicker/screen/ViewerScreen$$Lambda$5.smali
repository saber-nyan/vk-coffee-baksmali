.class final synthetic Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$5;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->lambda$createView$39(Landroid/view/View;)V

    return-void
.end method
