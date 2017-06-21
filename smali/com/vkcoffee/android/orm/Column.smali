.class public interface abstract annotation Lcom/vkcoffee/android/orm/Column;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/vkcoffee/android/orm/Column;
        Id = false
        autoincrement = false
        defaultValue = ""
        nullable = true
        size = 0x0L
        type = ""
        unique = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/orm/Column$MetaData;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract Id()Z
.end method

.method public abstract autoincrement()Z
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract nullable()Z
.end method

.method public abstract size()J
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract unique()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
