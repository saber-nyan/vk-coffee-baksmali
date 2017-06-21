.class final synthetic Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/util/IntentUtils$1;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/util/IntentUtils$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;->arg$1:Lcom/vk/attachpicker/util/IntentUtils$1;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/util/IntentUtils$1;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;-><init>(Lcom/vk/attachpicker/util/IntentUtils$1;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$1$$Lambda$1;->arg$1:Lcom/vk/attachpicker/util/IntentUtils$1;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/util/IntentUtils$1;->lambda$onPreExecute$159(Landroid/content/DialogInterface;)V

    return-void
.end method
