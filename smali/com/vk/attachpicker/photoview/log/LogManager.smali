.class public final Lcom/vk/attachpicker/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Lcom/vk/attachpicker/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vk/attachpicker/photoview/log/LoggerDefault;

    invoke-direct {v0}, Lcom/vk/attachpicker/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/photoview/log/LogManager;->logger:Lcom/vk/attachpicker/photoview/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcom/vk/attachpicker/photoview/log/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/vk/attachpicker/photoview/log/LogManager;->logger:Lcom/vk/attachpicker/photoview/log/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/vk/attachpicker/photoview/log/Logger;)V
    .locals 0
    .param p0, "newLogger"    # Lcom/vk/attachpicker/photoview/log/Logger;

    .prologue
    .line 28
    sput-object p0, Lcom/vk/attachpicker/photoview/log/LogManager;->logger:Lcom/vk/attachpicker/photoview/log/Logger;

    .line 29
    return-void
.end method
