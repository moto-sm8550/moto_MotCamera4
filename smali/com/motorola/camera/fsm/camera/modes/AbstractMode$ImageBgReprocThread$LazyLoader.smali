.class public final Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;
.super Ljava/lang/Object;
.source "AbstractMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;->INSTANCE:Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;

    return-void
.end method
