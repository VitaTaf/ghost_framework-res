.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;
.super Ljava/lang/Object;
.source "KeyguardAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$602(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$700(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 358
    return-void
.end method
