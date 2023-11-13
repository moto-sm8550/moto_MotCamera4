.class public final Lcom/motorola/camera/mcf/Mcf$LazyLoader;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/mcf/Mcf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf;-><init>(Lcom/motorola/camera/mcf/Mcf$1;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$LazyLoader;->INSTANCE:Lcom/motorola/camera/mcf/Mcf;

    return-void
.end method
