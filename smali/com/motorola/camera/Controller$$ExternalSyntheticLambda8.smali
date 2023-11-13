.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m(Lcom/motorola/camera/fsm/camera/CameraTransition$1;Ljava/util/ArrayList;)Lcom/motorola/camera/fsm/camera/CameraTransition$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 2
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    .line 5
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    return-void
.end method
