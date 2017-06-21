.class public interface abstract Lcom/vk/attachpicker/util/GcTrigger;
.super Ljava/lang/Object;
.source "GcTrigger.java"


# static fields
.field public static final DEFAULT:Lcom/vk/attachpicker/util/GcTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/vk/attachpicker/util/GcTrigger$1;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/GcTrigger$1;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/GcTrigger;->DEFAULT:Lcom/vk/attachpicker/util/GcTrigger;

    return-void
.end method


# virtual methods
.method public abstract runGc()V
.end method
