.class final synthetic Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/api/Document;

.field private final arg$2:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;->arg$1:Lcom/vkcoffee/android/api/Document;

    iput-object p2, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;->arg$2:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;-><init>(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;->arg$1:Lcom/vkcoffee/android/api/Document;

    iget-object v1, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;->arg$2:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->lambda$new$74(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
