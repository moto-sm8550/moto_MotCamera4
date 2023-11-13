.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteVbo(I)V

    return-void
.end method
