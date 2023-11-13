.class public final synthetic Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;->onItemClick(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
