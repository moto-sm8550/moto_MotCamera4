.class public abstract Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.super Ljava/lang/Object;
.source "ShutterEventAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;,
        Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(JJLcom/motorola/camera/EventListener;)V
.end method
