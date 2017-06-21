.class final synthetic Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/ViewerToolbar;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/ViewerToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;->arg$1:Lcom/vk/attachpicker/widget/ViewerToolbar;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/ViewerToolbar;)Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;-><init>(Lcom/vk/attachpicker/widget/ViewerToolbar;)V

    return-object v0
.end method


# virtual methods
.method public onOnSeekBarValueChange(Lcom/vk/attachpicker/widget/VkSeekBar;F)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$$Lambda$10;->arg$1:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->lambda$init$42(Lcom/vk/attachpicker/widget/VkSeekBar;F)V

    return-void
.end method
